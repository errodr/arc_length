# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'arc_length/version'

Gem::Specification.new do |spec|
  spec.name          = "arc_length"
  spec.version       = ArcLength::VERSION
  spec.authors       = ["errodr"]
  spec.email         = ["eric@ericr.com"]
  spec.summary       = %q{Calculate arc length}
  spec.description   = %q{Calculate arc length for a given radius and arc measure}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
