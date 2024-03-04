# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # SubscriptionMigrationPreviewRequest Model.
  class SubscriptionMigrationPreviewRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [SubscriptionMigrationPreviewOptions]
    attr_accessor :migration

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['migration'] = 'migration'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      []
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(migration = nil,
                   additional_properties = {})
      @migration = migration

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      migration = SubscriptionMigrationPreviewOptions.from_hash(hash['migration']) if
        hash['migration']

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      SubscriptionMigrationPreviewRequest.new(migration,
                                              hash)
    end
  end
end
