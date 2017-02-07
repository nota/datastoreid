module Datastoreid
  class Criteria
    # Defines behaviour for find operations.
    module Sortable
      # order('user_id', :asc)
      # order('user_id', :desc)
      def order(*args)
        set_query(query.order(*args))
        self
      end

      alias_method :sort, :order
    end
  end
end
