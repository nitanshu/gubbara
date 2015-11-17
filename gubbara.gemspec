$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "gubbara/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "gubbara"
  s.version     = Gubbara::VERSION
  s.authors     = ["nitanshu"]
  s.email       = ["nitanshu1991@gmail.com"]
  s.homepage    = ""
  s.summary     = "Gubbara"
  s.description = "Shows the placed notice from admin."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.1.10"

  s.add_development_dependency "sqlite3"
end
