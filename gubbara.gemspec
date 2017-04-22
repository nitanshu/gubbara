$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'gubbara/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'gubbara'
  s.version     = Gubbara::VERSION
  s.authors     = ['nitanshu']
  s.email       = ['nitanshu1991@gmail.com']
  s.homepage    = 'https://github.com/nitanshu/gubbara'
  s.summary     = 'Gubbara'
  s.description = 'It shows the placed notice from admin and if cross button clicked then it will not appear until the session expires.'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.rdoc']

  s.add_dependency 'rails'

  s.add_development_dependency 'sqlite3'
end
