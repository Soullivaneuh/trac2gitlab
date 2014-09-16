Gem::Specification.new do |s|
  s.name            = 'trac2gitlab'
  s.version         = '0.0.0'
  s.date            = '2014-09-16'
  s.summary         = "Trac to Gitlab converter"
  s.description     = "Converts Trac projects, wiki, milestones, tickets and comments into Gitlab using Gitlab api v3"
  s.authors         = ["Sullivan SENECHAL"]
  s.email           = 'soullivaneuh@gmail.com'
  s.homepage        = 'https://github.com/Soullivaneuh/trac2gitlab'
  s.executables     = ["trac2gitlab"]
  s.files           = [
    "LICENSE",
    "bin/trac2gitlab",
    "lib/trac2gitlab.rb",
    "lib/trac2gitlab/migration.rb",
    "trac2gitlab.gemspec",
  ]
  s.require_paths   = ['lib']
  s.license         = 'MIT'
end
