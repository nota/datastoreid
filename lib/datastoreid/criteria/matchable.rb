module Datastoreid
  class Criteria
    # Defines behaviour for find operations.
    module Matchable
      def exists?
        !!parent_entry.fetch_one(query)
      end
    end
  end
end
