module Datastoreid
  # Defines behaviour for find operations.
  module Findable
    extend ActiveSupport::Concern

    class_methods do
      def find(id)
        fetch_one query.where('__key__', '=', gcloud_key(id.to_i))
      end

      def find_by(criterion = nil)
        Criteria.new(self).where(criterion).fetch_one
      end
    end
  end
end
