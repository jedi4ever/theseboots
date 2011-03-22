# -*- encoding: utf-8 -*-
require File.expand_path("../lib/theseboots/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "theseboots"
  s.version     = Theseboots::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Patrick Debois"]
  s.email       = ["patrick.debois@jedi.be"]
  s.homepage    = "http://github.com/jedi4ever/theseboots/"
  s.summary     = %q{Bootstrapping code for getting ruby, chef, puppet, ... on a brand new server}
  s.description     = %q{Bootstrapping code for getting ruby, chef, puppet, ... on a brand new server}

  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project         = "theseboots"

  s.add_development_dependency "bundler", ">= 1.0.0"

  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  s.require_path = 'lib'
end

