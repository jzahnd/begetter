# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'begetter/version'

Gem::Specification.new do |spec|
  spec.name          = 'begetter'
  spec.version       = Begetter::VERSION
  spec.licenses      = ['MIT']
  spec.authors       = ['Jessica Zahnd']
  spec.email         = ['jessica@jessicazahnd.com']
  spec.summary       = 'Begetter creates a reference to a class constant from a string.'
  spec.homepage      = 'http://github.com/jzahnd/begetter'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(spec)/}) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.3.0'
end