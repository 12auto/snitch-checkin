# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'snitch_checkin/version'

Gem::Specification.new do |spec|
  spec.name          = "snitch_checkin"
  spec.version       = SnitchCheckin::VERSION
  spec.authors       = ["Marcos Essindi"]
  spec.email         = ["me@12auto.de"]
  spec.description   = "Check in snitchs in deadmanssnitch.com"
  spec.summary       = "With this gem you'll be able to check in snitch in deadmanssnitch.com"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
