Gem::Specification.new do |gem|
  gem.name        = 'datastoreid'
  gem.version     = '0.4.1'
  gem.date        = '2017-06-27'
  gem.summary     = "Google Datastore ODM"
  gem.description = "Simple ODM to Google Datastore based on Mongoid"
  gem.authors     = ["Fabio Tomio"]
  gem.email       = 'fabiotomio@gmail.com'
  gem.homepage    = 'http://github.com/fabiotomio/datastoreid'
  gem.license     = 'MIT'

  gem.files        = Dir["README.md", "lib/**/*"]
  gem.require_path = "lib"

  gem.required_ruby_version = ">= 2.3.0"

  gem.add_dependency 'google-cloud-datastore', '>= 0.20'
  gem.add_dependency 'activesupport', '>= 4.2'
  gem.add_dependency 'activemodel', '>= 4.2'
end
