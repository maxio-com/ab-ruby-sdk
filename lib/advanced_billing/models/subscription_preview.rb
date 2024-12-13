# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # SubscriptionPreview Model.
  class SubscriptionPreview < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [BillingManifest]
    attr_accessor :current_billing_manifest

    # TODO: Write general description for this method
    # @return [BillingManifest]
    attr_accessor :next_billing_manifest

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['current_billing_manifest'] = 'current_billing_manifest'
      @_hash['next_billing_manifest'] = 'next_billing_manifest'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        current_billing_manifest
        next_billing_manifest
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(current_billing_manifest: SKIP, next_billing_manifest: SKIP,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @current_billing_manifest = current_billing_manifest unless current_billing_manifest == SKIP
      @next_billing_manifest = next_billing_manifest unless next_billing_manifest == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      current_billing_manifest = BillingManifest.from_hash(hash['current_billing_manifest']) if
        hash['current_billing_manifest']
      next_billing_manifest = BillingManifest.from_hash(hash['next_billing_manifest']) if
        hash['next_billing_manifest']

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      SubscriptionPreview.new(current_billing_manifest: current_billing_manifest,
                              next_billing_manifest: next_billing_manifest,
                              additional_properties: additional_properties)
    end
  end
end
