# encoding: utf-8
module Mongoid #:nodoc:
  module Extensions #:nodoc:
    module TrueClass #:nodoc:

      # Adds equality hooks for true values.
      module Equality

        # Is the passed value a boolean?
        #
        # @example Is the value a boolean type?
        #   true.is_a?(Boolean)
        #
        # @param [ Class ] other The class to check.
        #
        # @return [ true, false ] If the other is a boolean.
        #
        # @since 1.0.0
        def is_a?(other)
          return true if other.name == "Boolean"
          super(other)
        end
      end
    end
  end
end
