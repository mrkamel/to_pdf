
require "to_pdf/version"

class String
  def to_pdf
    data = nil

    IO.popen("/usr/bin/htmldoc -t pdf --no-toc --quiet --footer ... --header ... --no-title --webpage --bodyfont helvetica -", "w+") do |pipe|
      pipe.write encode(Encoding::ISO_8859_1, :undef => :replace, :invalid => :replace, :replace => "")

      pipe.close_write

      data = pipe.read
    end

    data
  end
end

