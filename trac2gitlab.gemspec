# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'trac2gitlab/version'

Gem::Specification.new do |spec|
  spec.name          = 'trac2gitlab'
  spec.version       = Trac2Gitlab::VERSION
  spec.authors       = ["Sullivan SENECHAL"]
  spec.email         = ["sullivan@nexylan.com"]
  spec.summary       = %q{Trac to Gitlab converter}
  spec.description   = %q{Converts Trac projects, wiki, milestones, tickets and comments into Gitlab using Gitlab api v3}
  spec.homepage      = 'https://github.com/Soullivaneuh/trac2gitlab'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency               'svn2git'
  spec.add_dependency               'sqlite3', '~>1.3.9'

  spec.add_development_dependency   'bundler', '~> 1.6'
  spec.add_development_dependency   'rake'
end
