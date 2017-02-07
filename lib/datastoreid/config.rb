require "datastoreid/config/environment"

module Datastoreid
  # This module defines all the configuration options for Datastoreid
  module Config
    extend self

    def load!(path, environment = nil)
      settings = Environment.load_yaml(path, environment)
      if settings.present?
        load_configuration(settings)
      end
      settings
    end

    def load_configuration(settings)
      configuration = settings.with_indifferent_access
      @settings = configuration
    end

    def settings
      @settings
    end
  end
end
