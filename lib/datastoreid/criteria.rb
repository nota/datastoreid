require "datastoreid/criteria/findable"
require "datastoreid/criteria/queryable"
require "datastoreid/criteria/selectable"

module Datastoreid
  # Inject behaviour for query operations.
  class Criteria
    include Findable
    include Queryable
    include Selectable

    attr_accessor :datastore, :kind, :parent_entry

    def initialize(klass)
      @datastore = klass.datastore
      @kind = klass.kind
      @parent_entry = klass
    end
  end
end
