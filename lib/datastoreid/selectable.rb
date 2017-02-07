module Datastoreid
  # Defines behaviour for find operations.
  module Selectable
    extend ActiveSupport::Concern

    class_methods do
      def where(criterion = nil)
        Criteria.new(self).where(criterion)
      end

      def all
        Criteria.new(self)
      end
    end
  end
end
