if RUBY_VERSION < '1.9'
  require 'test/unit'
else
  require 'minitest/autorun'
end

require 'active_support/test_case'
require 'sprockets'
require 'steering/rails/template'
require 'fileutils'

Sprockets.register_engine ".handlebars", Steering::Rails::Template
