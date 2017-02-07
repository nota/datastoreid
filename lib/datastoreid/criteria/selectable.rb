module Datastoreid
  class Criteria
    # Defines behaviour for find operations.
    module Selectable
      def where(criterion = nil)
        if criterion.is_a? ::Hash
          criterion.each_pair do |key, value|
            key = parent_entry.original_properties_names[key] || key
            set_query(query.where(key.to_s, '=', value))
          end
        end
        self
      end
    end
  end
end
