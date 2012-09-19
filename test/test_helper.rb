require 'test/unit'
require 'sprockets'
require 'steering/rails/template'
require 'fileutils'

Sprockets.register_engine ".handlebars", Steering::Rails::Template
