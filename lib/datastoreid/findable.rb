module Datastoreid
  # Defines behaviour for find operations.
  module Findable
    extend ActiveSupport::Concern

    class_methods do
      def find(id_or_name)
        result = query.find(kind, id_or_name)
        return new(result) if result
      end

      def find_by(criterion = nil)
        Criteria.new(self).where(criterion).fetch_one
      end

      def first
        fetch_one query
      end
    end
  end
end
