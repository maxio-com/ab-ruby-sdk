# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # DeleteSubscriptionGroupResponse Model.
  class DeleteSubscriptionGroupResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :uid

    # TODO: Write general description for this method
    # @return [TrueClass | FalseClass]
    attr_accessor :deleted

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['uid'] = 'uid'
      @_hash['deleted'] = 'deleted'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        uid
        deleted
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(uid = SKIP,
                   deleted = SKIP,
                   additional_properties = {})
      @uid = uid unless uid == SKIP
      @deleted = deleted unless deleted == SKIP

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
      deleted = hash.key?('deleted') ? hash['deleted'] : SKIP

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      DeleteSubscriptionGroupResponse.new(uid,
                                          deleted,
                                          hash)
    end
  end
end
