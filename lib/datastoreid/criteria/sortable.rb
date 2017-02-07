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
            set_query(query.order(key.to_s, value))
          end
        elsif criterion.is_a? ::String
          set_query(query.order(criterion.to_s))
        end
        self
      end

      alias_method :sort, :order
      alias_method :order_by, :order
    end
  end
end
