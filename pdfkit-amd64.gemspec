# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "pdfkit-amd64/version"

Gem::Specification.new do |s|
  s.name        = "pdfkit-amd64"
  s.version     = PDFKit::AMD64::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Petteri Räty"]
  s.email       = ["github@petteriraty.eu"]
  s.homepage    = "http://rubygems.org/gems/pdfkit-amd64"
  # wkhtmltopdf binary is GPL-3
  # my code is MIT
  s.licenses    = ['GPL-3','MIT']
  s.summary     = %q{wkhtmltopdf amd64 binary for pdfkit}
  s.description = %q{
    This gem will install a amd64 binary and automatically
    configure pdfkit to use it. It will fall back on searching
    PATH if architecture does not match amd64.
  }

  s.rubyforge_project = "pdfkit-amd64"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'pdfkit'
  s.add_development_dependency 'rspec', '~>2.0'
  s.add_development_dependency 'rake'
end
