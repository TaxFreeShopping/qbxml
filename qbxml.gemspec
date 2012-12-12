# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'qbxml/version'

Gem::Specification.new do |gem|
  gem.name          = "qbxml"
  gem.version       = Qbxml::VERSION
  gem.authors       = ["Alex Skryl"]
  gem.email         = ["rut216@gmail.com"]
  gem.description   = %q{Quickbooks XML Parser}
  gem.summary       = %q{Quickbooks XML Parser and Validation Tool}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency ['activesupport', '~> 3.2']
  gem.add_dependency ['nokogiri', '~> 1.5']
end