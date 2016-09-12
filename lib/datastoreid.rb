module Datastoreid
  require 'active_model'
  require 'active_support'
  
  require 'datastoreid/criteria/findable'
  require 'datastoreid/criteria/queryable'
  require 'datastoreid/criteria'
  require 'datastoreid/entity/initializable'
  require 'datastoreid/properties'
  require 'datastoreid/persistable/creatable'
  require 'datastoreid/persistable/deletable'
  require 'datastoreid/persistable/savable'
  require 'datastoreid/persistable'
  require 'datastoreid/validatable'
  require 'datastoreid/entity'
  require 'datastoreid/errors/datastore_error'
  require 'datastoreid/persistable'
  require 'datastoreid/timestamps'
end
