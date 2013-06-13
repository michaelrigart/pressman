# coding: utf-8
require './lib/pressman/version'

Gem::Specification.new do |spec|
  spec.name          = 'pressman'
  spec.version       = Pressman::VERSION
  spec.authors       = %w(Michaël Rigart)
  spec.email         = %w(michael@netronix.be)
  spec.summary       = 'Pressman is an experimental, multi-format e-book generator'
  spec.description   = 'Pressman is an experimental, multi-format e-book generator. It takes textile files and converts them to multiple e-book formats'
  spec.homepage      = 'http://www.michaelrigart.be'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = %w(lib)

  spec.add_dependency 'thor', '~> 0.18'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
end
