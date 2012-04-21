# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "to_pdf/version"

Gem::Specification.new do |s|
  s.name        = "to_pdf"
  s.version     = ToPdf::VERSION
  s.authors     = ["Benjamin Vetter"]
  s.email       = ["vetter@flakks.com"]
  s.homepage    = ""
  s.summary     = %q{Convert a HTML string to a PDF using htmldoc.}
  s.description = %q{Easily convert a HTML string to a PDF using htmldoc and to_pdf.}

  s.rubyforge_project = "to_pdf"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "rake"
end
