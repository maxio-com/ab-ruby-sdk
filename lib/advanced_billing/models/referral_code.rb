# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # ReferralCode Model.
  class ReferralCode < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :id

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :site_id

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :subscription_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :code

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['site_id'] = 'site_id'
      @_hash['subscription_id'] = 'subscription_id'
      @_hash['code'] = 'code'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        site_id
        subscription_id
        code
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(id: SKIP, site_id: SKIP, subscription_id: SKIP, code: SKIP,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @id = id unless id == SKIP
      @site_id = site_id unless site_id == SKIP
      @subscription_id = subscription_id unless subscription_id == SKIP
      @code = code unless code == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      site_id = hash.key?('site_id') ? hash['site_id'] : SKIP
      subscription_id =
        hash.key?('subscription_id') ? hash['subscription_id'] : SKIP
      code = hash.key?('code') ? hash['code'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      ReferralCode.new(id: id,
                       site_id: site_id,
                       subscription_id: subscription_id,
                       code: code,
                       additional_properties: additional_properties)
    end
  end
end
