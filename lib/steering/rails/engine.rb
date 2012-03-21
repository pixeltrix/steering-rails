module Steering
  module Rails
    class Engine < ::Rails::Engine

      config.before_initialize do |app|
        if app.config.assets.enabled
          require "sprockets"
          Sprockets::Engines #force autoloading
          Sprockets.register_engine ".handlebars", Steering::Rails::Template
          Sprockets.register_engine ".hbs", Steering::Rails::Template
          Sprockets.register_engine ".hjs", Steering::Rails::Template
          Sprockets.register_engine ".hb", Steering::Rails::Template
        end
      end
    end
  end
end