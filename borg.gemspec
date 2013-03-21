# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'borg/version'

Gem::Specification.new do |s|
  s.name        = "borg-rb"
  s.version     = Borg::VERSION
  s.authors     = ["Identified"]
  s.email       = ["phil@identified.com", "tejas@identified.com"]
  s.description   = %q{Ruby-based software provisioning and deployment framework}
  s.summary       = %q{Ruby-based software provisioning and deployment framework}
  s.homepage      = "https://github.com/B0RG/borg"
  s.license       = "MIT"

  s.files         = `git ls-files`.split($/)
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ["lib"]

  s.add_dependency "capistrano"
  s.add_dependency "capistrano_colors"
  s.add_dependency "colored"
  s.add_dependency "term-ansicolor"

  s.add_development_dependency "rspec"
end
