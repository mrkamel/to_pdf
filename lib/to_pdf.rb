
require "to_pdf/version"

if RUBY_VERSION < "1.9"
  require "iconv"
end

class String
  def to_pdf
    data = nil

    IO.popen("/usr/bin/htmldoc -t pdf --no-toc --quiet --footer ... --header ... --no-title --webpage --bodyfont helvetica -", "w+") do |pipe| 
      if RUBY_VERSION < "1.9"
        doc = Iconv.conv("iso-8859-1", "utf-8", self)
      else
        doc = encode(Encoding::ISO_8859_1)
      end

      pipe.write doc 

      pipe.close_write

      data = pipe.read
    end 

    data
  end
end

