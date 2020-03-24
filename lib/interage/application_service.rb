# frozen_string_literal: true

module Interage
  class ApplicationService
    attr_reader :errors

    # Call your service
    #
    # Example:
    #   Foo.call(arg1: 1, arg2: 2)
    #
    # Arguments:
    #   args: (Hash)
    #
    # Return:
    #   perform's return
    def self.call(**args)
      new(args).perform
    end

    def initialize(args = {})
      args.each { |key, value| set_private_ivar(key, value) }
    end

    # Implement this method to run your service
    def perform
      raise NotImplementedError,
            "Please implement 'perform' method in your #{self.class.name}"
    end

    def success?
      errors.blank?
    end

    private

    def set_private_ivar(key, value)
      instance_variable_set("@#{key}", value)

      self.class.class_eval do
        private

        attr_reader key.to_sym
      end
    end
  end
end
