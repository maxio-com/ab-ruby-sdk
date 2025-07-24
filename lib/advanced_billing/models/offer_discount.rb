# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # OfferDiscount Model.
  class OfferDiscount < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :coupon_code

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :coupon_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :coupon_name

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['coupon_code'] = 'coupon_code'
      @_hash['coupon_id'] = 'coupon_id'
      @_hash['coupon_name'] = 'coupon_name'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        coupon_code
        coupon_id
        coupon_name
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(coupon_code: SKIP, coupon_id: SKIP, coupon_name: SKIP,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @coupon_code = coupon_code unless coupon_code == SKIP
      @coupon_id = coupon_id unless coupon_id == SKIP
      @coupon_name = coupon_name unless coupon_name == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      coupon_code = hash.key?('coupon_code') ? hash['coupon_code'] : SKIP
      coupon_id = hash.key?('coupon_id') ? hash['coupon_id'] : SKIP
      coupon_name = hash.key?('coupon_name') ? hash['coupon_name'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      OfferDiscount.new(coupon_code: coupon_code,
                        coupon_id: coupon_id,
                        coupon_name: coupon_name,
                        additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} coupon_code: #{@coupon_code}, coupon_id: #{@coupon_id}, coupon_name:"\
      " #{@coupon_name}, additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} coupon_code: #{@coupon_code.inspect}, coupon_id: #{@coupon_id.inspect},"\
      " coupon_name: #{@coupon_name.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
