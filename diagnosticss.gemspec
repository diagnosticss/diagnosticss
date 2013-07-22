# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'diagnosticss/version'

Gem::Specification.new do |gem|
  gem.name          = "diagnosticss"
  gem.version       = Diagnosticss::VERSION
  gem.authors       = ["Nickolay Abdrafikov", "Vasily Polovnyov"]
  gem.email         = ["nicck.olay@gmail.com", "vazilla@gmail.com"]
  gem.description   = %q{Diagnostic CSS stylesheet that helps visually detect any potentially invalid, inaccessible or erroneous HTML markup.}
  gem.summary       = %q{Diagnostic CSS stylesheet that helps visually detect any potentially invalid, inaccessible or erroneous HTML markup.}
  gem.homepage      = "http://diagnosticss.github.io/"
  gem.license       = "MIT"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.add_development_dependency 'sass'
end
