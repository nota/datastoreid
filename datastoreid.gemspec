# -*- encoding: utf-8 -*-
# stub: datastoreid 0.4.0 ruby lib

Gem::Specification.new do |s|
  s.name = "datastoreid"
  s.version = "0.4.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Fabio Tomio"]
  s.date = "2016-09-12"
  s.description = "Simple ODM to Google Datastore based on Mongoid"
  s.email = "fabiotomio@gmail.com"
  s.files = ["README.md", "lib/datastoreid", "lib/datastoreid.rb", "lib/datastoreid/config", "lib/datastoreid/config.rb", "lib/datastoreid/config/environment.rb", "lib/datastoreid/criteria", "lib/datastoreid/criteria.rb", "lib/datastoreid/criteria/findable.rb", "lib/datastoreid/criteria/limitable.rb", "lib/datastoreid/criteria/queryable.rb", "lib/datastoreid/criteria/selectable.rb", "lib/datastoreid/criteria/sortable.rb", "lib/datastoreid/entity", "lib/datastoreid/entity.rb", "lib/datastoreid/entity/initializable.rb", "lib/datastoreid/errors", "lib/datastoreid/errors/datastore_error.rb", "lib/datastoreid/findable.rb", "lib/datastoreid/persistable", "lib/datastoreid/persistable.rb", "lib/datastoreid/persistable/creatable.rb", "lib/datastoreid/persistable/deletable.rb", "lib/datastoreid/persistable/savable.rb", "lib/datastoreid/properties.rb", "lib/datastoreid/queryable.rb", "lib/datastoreid/selectable.rb", "lib/datastoreid/timestamps.rb", "lib/datastoreid/validatable.rb"]
  s.homepage = "http://github.com/fabiotomio/datastoreid"
  s.licenses = ["MIT"]
  s.required_ruby_version = Gem::Requirement.new(">= 2.3.0")
  s.rubygems_version = "2.5.1"
  s.summary = "Google Datastore ODM"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<google-cloud-datastore>, ["~> 0.20"])
      s.add_runtime_dependency(%q<activesupport>, ["~> 4.2"])
      s.add_runtime_dependency(%q<activemodel>, ["~> 4.2"])
    else
      s.add_dependency(%q<google-cloud-datastore>, ["~> 0.20"])
      s.add_dependency(%q<activesupport>, ["~> 4.2"])
      s.add_dependency(%q<activemodel>, ["~> 4.2"])
    end
  else
    s.add_dependency(%q<google-cloud-datastore>, ["~> 0.20"])
    s.add_dependency(%q<activesupport>, ["~> 4.2"])
    s.add_dependency(%q<activemodel>, ["~> 4.2"])
  end
end
