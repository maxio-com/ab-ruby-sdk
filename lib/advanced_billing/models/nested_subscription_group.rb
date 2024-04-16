# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # NestedSubscriptionGroup Model.
  class NestedSubscriptionGroup < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The UID for the group
    # @return [String]
    attr_accessor :uid

    # Whether the group is configured to rely on a primary subscription for
    # billing. At this time, it will always be 1.
    # @return [Integer]
    attr_accessor :scheme

    # The subscription ID of the primary within the group. Applicable to scheme
    # 1.
    # @return [Integer]
    attr_accessor :primary_subscription_id

    # A boolean indicating whether the subscription is the primary in the group.
    # Applicable to scheme 1.
    # @return [TrueClass | FalseClass]
    attr_accessor :primary

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['uid'] = 'uid'
      @_hash['scheme'] = 'scheme'
      @_hash['primary_subscription_id'] = 'primary_subscription_id'
      @_hash['primary'] = 'primary'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        uid
        scheme
        primary_subscription_id
        primary
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(uid = SKIP,
                   scheme = SKIP,
                   primary_subscription_id = SKIP,
                   primary = SKIP,
                   additional_properties = {})
      @uid = uid unless uid == SKIP
      @scheme = scheme unless scheme == SKIP
      @primary_subscription_id = primary_subscription_id unless primary_subscription_id == SKIP
      @primary = primary unless primary == SKIP

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      uid = hash.key?('uid') ? hash['uid'] : SKIP
      scheme = hash.key?('scheme') ? hash['scheme'] : SKIP
      primary_subscription_id =
        hash.key?('primary_subscription_id') ? hash['primary_subscription_id'] : SKIP
      primary = hash.key?('primary') ? hash['primary'] : SKIP

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      NestedSubscriptionGroup.new(uid,
                                  scheme,
                                  primary_subscription_id,
                                  primary,
                                  hash)
    end
  end
end
