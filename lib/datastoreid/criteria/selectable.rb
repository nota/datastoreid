module Datastoreid
  class Criteria
    # Defines behaviour for find operations.
    module Selectable
      def where(criterion = nil)
        if criterion.is_a? ::Hash
          criterion.each_pair { |key, value| set_query(query.where(key.to_s, '=', value)) }
        end
        self
      end
    end
  end
end
