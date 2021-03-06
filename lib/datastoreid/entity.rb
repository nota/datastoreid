require 'google/cloud/datastore/entity'

module Datastoreid
  # Inject behaviour for Datastore Entity.
  module Entity
    extend ActiveSupport::Concern

    include Persistable
    include Properties
    include Validatable
    include Selectable
    include Findable
    include Queryable

    include Entity::Initializable

    included do
      include ActiveModel::Conversion
      extend ActiveModel::Naming

      class_attribute :kind

      def persisted?
        id.present?
      end

      def gcloud_key
        self.class.datastore.key(kind, id)
      end

      def to_gcloud
        hash = {}
        properties_names.each do |property|
          hash[property] = send(property)
        end
        hash.sort.to_h
      end

      def to_csv
        values = to_gcloud.sort.to_h.values.map! do |v|
          if v.class == Time
            v.to_formatted_s(:db)
          else
            v.to_s.gsub(',', '')
          end
        end
        values.join(',')
      end

      def self.kind(kind_name)
        self.kind = kind_name
      end
    end

    class_methods do
      def datastore
        if settings['project'] && settings['project'] != ''
          # XXX: We can set EMULATOR_HOST only from environmental viriables so far
          ENV['DATASTORE_EMULATOR_HOST'] = settings['project']
        end

        @datastore ||= Google::Cloud::Datastore.new(
          project: settings['project']
        )
      end

      def datastore_entity
        datastore.entity kind
      end

      protected

      def gcloud_key(id_or_name)
        datastore.key(kind, id_or_name)
      end
    end
  end
end
