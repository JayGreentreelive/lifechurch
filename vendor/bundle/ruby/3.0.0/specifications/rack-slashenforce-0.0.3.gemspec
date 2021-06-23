# -*- encoding: utf-8 -*-
# stub: rack-slashenforce 0.0.3 ruby lib

Gem::Specification.new do |s|
  s.name = "rack-slashenforce".freeze
  s.version = "0.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Tyler Kellen".freeze]
  s.date = "2017-02-28"
  s.description = "".freeze
  s.email = "tyler@sleekcode.net".freeze
  s.homepage = "https://github.com/tkellen/rack-slashenforce/".freeze
  s.rubygems_version = "3.2.5".freeze
  s.summary = "A rack middleware to enforce appending or removing trailing slashes.".freeze

  s.installed_by_version = "3.2.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<rack>.freeze, [">= 0"])
  else
    s.add_dependency(%q<rack>.freeze, [">= 0"])
  end
end
