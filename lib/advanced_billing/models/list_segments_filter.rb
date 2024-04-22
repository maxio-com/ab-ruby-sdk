# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # ListSegmentsFilter Model.
  class ListSegmentsFilter < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The value passed here would be used to filter segments. Pass a value
    # related to `segment_property_1` on attached Metric. If empty string is
    # passed, this filter would be rejected. Use in query
    # `filter[segment_property_1_value]=EU`.
    # @return [String]
    attr_accessor :segment_property_1_value

    # The value passed here would be used to filter segments. Pass a value
    # related to `segment_property_2` on attached Metric. If empty string is
    # passed, this filter would be rejected.
    # @return [String]
    attr_accessor :segment_property_2_value

    # The value passed here would be used to filter segments. Pass a value
    # related to `segment_property_3` on attached Metric. If empty string is
    # passed, this filter would be rejected.
    # @return [String]
    attr_accessor :segment_property_3_value

    # The value passed here would be used to filter segments. Pass a value
    # related to `segment_property_4` on attached Metric. If empty string is
    # passed, this filter would be rejected.
    # @return [String]
    attr_accessor :segment_property_4_value

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['segment_property_1_value'] = 'segment_property_1_value'
      @_hash['segment_property_2_value'] = 'segment_property_2_value'
      @_hash['segment_property_3_value'] = 'segment_property_3_value'
      @_hash['segment_property_4_value'] = 'segment_property_4_value'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        segment_property_1_value
        segment_property_2_value
        segment_property_3_value
        segment_property_4_value
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(segment_property_1_value = SKIP,
                   segment_property_2_value = SKIP,
                   segment_property_3_value = SKIP,
                   segment_property_4_value = SKIP,
                   additional_properties = {})
      @segment_property_1_value = segment_property_1_value unless segment_property_1_value == SKIP
      @segment_property_2_value = segment_property_2_value unless segment_property_2_value == SKIP
      @segment_property_3_value = segment_property_3_value unless segment_property_3_value == SKIP
      @segment_property_4_value = segment_property_4_value unless segment_property_4_value == SKIP

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      segment_property_1_value =
        hash.key?('segment_property_1_value') ? hash['segment_property_1_value'] : SKIP
      segment_property_2_value =
        hash.key?('segment_property_2_value') ? hash['segment_property_2_value'] : SKIP
      segment_property_3_value =
        hash.key?('segment_property_3_value') ? hash['segment_property_3_value'] : SKIP
      segment_property_4_value =
        hash.key?('segment_property_4_value') ? hash['segment_property_4_value'] : SKIP

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      ListSegmentsFilter.new(segment_property_1_value,
                             segment_property_2_value,
                             segment_property_3_value,
                             segment_property_4_value,
                             hash)
    end
  end
end
