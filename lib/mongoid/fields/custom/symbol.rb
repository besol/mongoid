# encoding: utf-8
module Mongoid #:nodoc:
  module Fields #:nodoc:
    module Custom #:nodoc:

      # Defines the behaviour for symbol fields.
      class Symbol < Base

        # Serialize the object from the type defined in the model to a MongoDB
        # compatible object to store.
        #
        # @example Serialize the field.
        #   field.serialize(object)
        #
        # @param [ Object ] object The object to cast.
        #
        # @return [ Symbol ] The converted symbol.
        #
        # @since 2.1.0
        def serialize(object)
          object.blank? ? nil : object.to_sym
        end
        alias :set :serialize
      end
    end
  end
end
