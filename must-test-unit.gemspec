# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'must/test/unit/version'

Gem::Specification.new do |spec|
  spec.name          = "must-test-unit"
  spec.version       = Must::Test::Unit::VERSION
  spec.authors       = ["a7madx7"]
  spec.email         = ["ahmad.hamdi.emara@gmail.com"]

  spec.summary       = %q{Adds the must method to the Test::Unit::TestCase class after you require 'must'}
  spec.description   = %q{As soon as you install this gem, you'll get the much more readable must 'do something' functionality which will translate to test_do_something but you'll have first to require 'must'}
  spec.homepage      = "http://rubygems.org/gems/must-test-unit"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    # spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  s.add_runtime_dependency "test-unit"
end
