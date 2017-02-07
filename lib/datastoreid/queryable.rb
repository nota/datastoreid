module Datastoreid
  # Defines behaviour for query operations.
  module Queryable
    extend ActiveSupport::Concern

    class_methods do
      def query
        datastore.query(kind)
      end

      def fetch_one(query)
        result = datastore.run query
        if result.count > 0
          new(result.first)
        else
          nil
        end
      end

      def fetch(query)
        result = datastore.run query
        if result.count > 0
          result.map { |element| new(element) }
        else
          []
        end
      end
    end
  end
end
