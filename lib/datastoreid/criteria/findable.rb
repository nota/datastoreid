module Datastoreid
  class Criteria
    # Defines behaviour for find operations.
    module Findable
      def first
        fetch_one
      end
    end
  end
end
