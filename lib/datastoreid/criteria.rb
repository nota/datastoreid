require "datastoreid/criteria/findable"
require "datastoreid/criteria/queryable"
require "datastoreid/criteria/selectable"
require "datastoreid/criteria/limitable"
require "datastoreid/criteria/sortable"
require "datastoreid/criteria/matchable"
module Datastoreid
  # The +Criteria+ class is the core object needed in Datastoreid to retrieve
  # objects from the database. It is a DSL that essentially sets up the
  # selector and options arguments that get passed on to a Google::Datastore::V1::Query
  # in the Ruby driver. Each method on the +Criteria+ returns self to they
  # can be chained in order to create a readable criterion to be executed
  # against the database.
  class Criteria
    include Enumerable
    include Findable
    include Queryable
    include Selectable
    include Limitable
    include Sortable
    include Matchable

    attr_accessor :datastore, :kind, :parent_entry

    def initialize(klass)
      @datastore = klass.datastore
      @kind = klass.kind
      @parent_entry = klass
    end
  end
end
