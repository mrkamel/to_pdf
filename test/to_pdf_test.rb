
require "test/unit"
require File.expand_path("../../lib/to_pdf", __FILE__)

class ToPdfTest < Test::Unit::TestCase
  def test_to_pdf
    string =<<EOF
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <title>Test</title>
  </head>

  <body>
    This is a test
  </body>
</html>
EOF

    assert string.to_pdf
  end
end

