# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rambutan/version'

Gem::Specification.new do |spec|
  spec.name          = "rambutan"
  spec.version       = Rambutan::VERSION
  spec.authors       = ["Adriana Palacio", "Guillermo Iguaran"]
  spec.email         = ["ppinedo.adriana@gmail.com", "guilleiguaran@gmail.com"]
  spec.description   = %q{Ruby web microframework with Rails-ish controllers and routes.}
  spec.summary       = %q{Ruby web microframework with Rails-ish controllers and routes.}
  spec.homepage      = "https://github.com/NewRosies/rambutan"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_dependency "http_router"
end
