require "datastoreid/criteria/findable"
require "datastoreid/criteria/queryable"
require "datastoreid/criteria/selectable"
require "datastoreid/criteria/limitable"
require "datastoreid/criteria/sortable"

module Datastoreid
  # Inject behaviour for query operations.
  class Criteria
    include Findable
    include Queryable
    include Selectable
    include Limitable
    include Sortable

    attr_accessor :datastore, :kind, :parent_entry

    def initialize(klass)
      @datastore = klass.datastore
      @kind = klass.kind
      @parent_entry = klass
    end
  end
end
