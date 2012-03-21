# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "steering/rails/version"

Gem::Specification.new do |gem|
  gem.name          = "steering-rails"
  gem.version       = Steering::Rails::VERSION
  gem.platform      = Gem::Platform::RUBY
  gem.authors       = ["Andrew White"]
  gem.email         = ["andyw@pixeltrix.co.uk"]
  gem.homepage      = "https://github.com/pixeltrix/steering-rails"

  gem.summary       = %q{Precompiled Handlebars.js templates for the Rails asset pipeline}
  gem.description   = %q{Precompiled Handlebars.js templates for the Rails asset pipeline}

  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency 'sprockets', '>= 2.1'
  gem.add_runtime_dependency 'railties',  '>= 3.1'
  gem.add_runtime_dependency 'steering',  '~> 1.0'
end
