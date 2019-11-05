# coding: utf-8
# frozen_string_literal: true

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require "knife-vrealize/version"

Gem::Specification.new do |spec|
  spec.name          = "knife-vrealize"
  spec.version       = KnifeVrealize::VERSION
  spec.authors       = ["Chef Software"]
  spec.email         = ["oss@chef.io"]
  spec.summary       = "Chef Infra Knife plugin to interact with VMware vRealize."
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/chef/knife-vrealize"
  spec.license       = "Apache-2.0"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "cookstyle"
  spec.add_dependency "knife-cloud",  "~> 1.2.0"
  spec.add_dependency "vmware-vra",   "~> 2"
  spec.add_dependency "vcoworkflows", "~> 0.2"
  spec.add_dependency "rb-readline", "~> 0.5"

  spec.add_development_dependency "rake", ">= 10.0"
  spec.add_development_dependency "chefstyle", "~> 0.35"
end
