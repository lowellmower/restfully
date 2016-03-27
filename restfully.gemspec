# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'restfully/version'

Gem::Specification.new do |spec|
  spec.name          = "restfully-lowellmower"
  spec.version       = Restfully::VERSION
  spec.authors       = ["lowellmower"]
  spec.email         = ["lowell.mower@gmail.com"]

  spec.summary       = %q{Basic wrapper around Ruby's net/http module.}
  spec.description   = %q{A gem to allow you to easily make restful commands and stream responses to files.}
  spec.homepage      = "https://www.github.com/lowellmower"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata['allowed_push_host'] = "https://www.github.com/lowellmower"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  # end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
