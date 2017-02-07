module Datastoreid
  class Criteria
    # Defines behaviour for sort operations.
    module Sortable
      # order(created_at: :asc)
      # order(created_at: :desc)
      # order('created_at')
      # order(:created_at)
      def order(criterion)
        if criterion.is_a? ::Hash
          criterion.each_pair do |key, value|
            key = parent_entry.original_properties_names[key] || key
            set_query(query.order(key.to_s, value))
          end
        elsif criterion.is_a? ::String
          key = criterion
          key = parent_entry.original_properties_names[key.to_s] || key
          set_query(query.order(key.to_s))
        end
        self
      end

      alias_method :sort, :order
      alias_method :order_by, :order
    end
  end
end
