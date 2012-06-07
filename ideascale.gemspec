# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "ideascale/version"

Gem::Specification.new do |s|
  s.name        = "ideascale"
  s.version     = Ideascale::VERSION
  s.authors     = ["Rahul Trikha"]
  s.email       = ["rahul.trikha@gmail.com"]
  s.homepage    = "http://github.com/rahult/ideascale-ruby/"
  s.summary     = %q{A library which implements the complete functionality of v1 of the IdeaScale API.}
  s.description = %q{Implements the complete functionality of the IdeaScale API.}

  s.rubyforge_project = "ideascale"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "pry"
  s.add_development_dependency "rake"
  s.add_development_dependency "rspec"
  s.add_runtime_dependency     "json"
  s.add_runtime_dependency     "hashie"
  s.add_runtime_dependency     "rest-client"
end
