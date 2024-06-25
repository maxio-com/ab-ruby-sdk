# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # ListSubscriptionGroupsResponse Model.
  class ListSubscriptionGroupsResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Array[ListSubscriptionGroupsItem]]
    attr_accessor :subscription_groups

    # TODO: Write general description for this method
    # @return [ListSubscriptionGroupsMeta]
    attr_accessor :meta

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['subscription_groups'] = 'subscription_groups'
      @_hash['meta'] = 'meta'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        subscription_groups
        meta
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(subscription_groups: SKIP, meta: SKIP,
                   additional_properties: {})
      @subscription_groups = subscription_groups unless subscription_groups == SKIP
      @meta = meta unless meta == SKIP

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      subscription_groups = nil
      unless hash['subscription_groups'].nil?
        subscription_groups = []
        hash['subscription_groups'].each do |structure|
          subscription_groups << (ListSubscriptionGroupsItem.from_hash(structure) if structure)
        end
      end

      subscription_groups = SKIP unless hash.key?('subscription_groups')
      meta = ListSubscriptionGroupsMeta.from_hash(hash['meta']) if hash['meta']

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      ListSubscriptionGroupsResponse.new(subscription_groups: subscription_groups,
                                         meta: meta,
                                         additional_properties: hash)
    end
  end
end
