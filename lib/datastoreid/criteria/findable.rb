module Datastoreid
  class Criteria
    # Defines behaviour for find operations.
    module Findable
      def find(criterion = nil)
        if criterion.is_a? ::Hash
          criterion.each_pair { |key, value| set_query(query.where(key.to_s, '=', value)) }
        end
        fetch_one
      end

      def first
        fetch_one
      end
    end
  end
end
