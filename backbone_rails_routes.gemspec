# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'backbone_rails_routes/version'

Gem::Specification.new do |spec|
  spec.name          = "backbone_rails_routes"
  spec.version       = BackboneRailsRoutes::VERSION
  spec.authors       = ["Alexandre Colas"]
  spec.email         = ["colasalexandre@gmail.com"]
  spec.summary       = "Rails routes directly in a Backbone App"
  spec.description   = "Rails routes directly in a Backbone App"
  spec.homepage      = "https://github.com/alexandrecolas/backbone_rails_routes"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
