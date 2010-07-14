# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{grizzly}
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Grzegorz Kazulak"]
  s.date = %q{2010-07-13}
  s.description = %q{Control access like a Bear}
  s.email = %q{grzegorz.kazulak@gmail.com}
  s.extra_rdoc_files = [
    "README.md"
  ]
  s.files = [
    ".gitignore",
     "Gemfile",
     "README.md",
     "Rakefile",
     "VERSION",
     "grizzly.gemspec",
     "init.rb",
     "lib/grizzly.rb",
     "lib/grizzly/adapter.rb",
     "lib/grizzly/adapter/active_record.rb",
     "lib/grizzly/configuration.rb",
     "lib/grizzly/errors.rb",
     "lib/grizzly/groups.rb",
     "lib/grizzly/logger.rb",
     "lib/grizzly/permissions.rb",
     "lib/grizzly/storage.rb",
     "lib/grizzly/stored_group.rb",
     "lib/grizzly/stored_permission.rb",
     "spec/configuration_spec.rb",
     "spec/grizzly_spec.rb",
     "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/grzegorzkazulak/grizzly/grizzly}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{grizzly}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{ACL for bears}
  s.test_files = [
    "spec/configuration_spec.rb",
     "spec/grizzly_spec.rb",
     "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

