module Datastoreid
  class Criteria
    # Defines behaviour for query operations.
    module Queryable
      def query
        @query ||= datastore.query(kind)
      end

      def set_query(query)
        @query = query
      end

      def fetch_one
        parent_entry.fetch_one(query)
      end

      def fetch
        parent_entry.fetch(query)
      end

      def each
        @entries ||= fetch
        @entries.each do |entry|
          yield(entry)
        end
      end
    end
  end
end
