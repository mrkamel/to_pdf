
require "to_pdf/version"

class String
  def to_pdf
    data = nil

    IO.popen("/usr/bin/htmldoc -t pdf --no-toc --quiet --footer ... --header ... --no-title --webpage --bodyfont helvetica -", "w+") do |pipe| 
      doc = Iconv.conv("iso-8859-1", "utf-8", self) rescue self 

      pipe.write doc 

      pipe.close_write

      data = pipe.read
    end 

    data
  end
end

