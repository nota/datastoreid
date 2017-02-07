module Datastoreid
  # Define behaviour to properties of entity.
  module Properties
    extend ActiveSupport::Concern

    included do
      class_attribute :properties, :original_properties_names

      self.properties = {}
      self.original_properties_names = {}

      property :id # Default property

      def properties=(properties)
        if properties.is_a? ::Hash
          properties.each_pair { |key, value| send("#{key}=", value) }
        else
          raise Datastore::Errors::DatastoreError.new 'Properties params need is Hash'
        end
      rescue
        raise Datastore::Errors::DatastoreError.new 'Property invalid'
      end

      def properties_names
        properties.keys
      end

      def set_default_values
        properties.each_pair do |name, options|
          send("#{name}=", properties[name][:default]) if options.key? :default
        end
      end
    end

    class_methods do
      protected

      def property(name, options = {})
        add_property(name.to_s, options)
      end

      def add_property(name, options)
        properties[name] = options
        original_properties_names[options[:as]] = name if options[:as]
        create_accessors(name)
      end

      def alias_property_name(name)
        properties[name][:as]
      end

      def original_property_name(alias_name)
        original_properties_names[alias_name]
      end

      # https://www.leighhalliday.com/ruby-metaprogramming-creating-methods
      def create_accessors(name)
        define_method(name) do # Define get method
          instance_variable_get("@#{name}")
        end
        define_method("#{name}=") do |value| # Define set method
          instance_variable_set("@#{name}", value)
        end

        if alias_property_name(name)
          alias_method(alias_property_name(name), name)
          alias_method("#{alias_property_name(name)}=", "#{name}=")
        end
      end
    end
  end
end
