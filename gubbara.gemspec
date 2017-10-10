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
  s.description = 'It helps admin to announce anything including pasrsed html in a form a notice.It consists two types of announcements: Session Based: Only for logged in users.(Application Layout), Cookie Based: For all users visting the website.(Public Layout)'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.rdoc']

  s.add_runtime_dependency 'rails'
end
