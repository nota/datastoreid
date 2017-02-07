module Datastoreid
  class Criteria
    # Defines behaviour for find operations.
    module Limitable
      def limit(num)
        set_query(query.limit(num))
        self
      end

      def offset(num)
        set_query(query.offset(num))
        self
      end
    end
  end
end
