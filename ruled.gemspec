$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "ruled/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "ruled"
  s.version     = Ruled::VERSION
  s.authors     = ["Andrey Eremeev aka azazelo"]
  s.email       = ["andrey.eremeyev@gmail.com"]
  s.homepage    = 'http://rubygems.org/gems/ruled'
  s.summary     = "make models limited."
  s.description = "make models limited."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.1"

#  s.add_development_dependency "sqlite3"
end
