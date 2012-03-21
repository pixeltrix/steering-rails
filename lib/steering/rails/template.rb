require "tilt"

module Steering
  module Rails
    class Template < Tilt::Template
      def self.engine_initialized?
        defined? Steering.compile
      end
  
      def initialize_engine
        require_template_library "steering"
      end
  
      def prepare
      end
  
      def evaluate(scope, locals, &block)
        "Handlebars.template(#{Steering.compile(data)})"
      end
    end
  end
end