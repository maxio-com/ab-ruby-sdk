# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # (Optional). Cannot be used when also specifying next_billing_at
  class CalendarBilling < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # A day of month that subscription will be processed on. Can be 1 up to 28
    # or 'end'.
    # @return [Object]
    attr_accessor :snap_day

    # A day of month that subscription will be processed on. Can be 1 up to 28
    # or 'end'.
    # @return [FirstChargeType]
    attr_accessor :calendar_billing_first_charge

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['snap_day'] = 'snap_day'
      @_hash['calendar_billing_first_charge'] =
        'calendar_billing_first_charge'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        snap_day
        calendar_billing_first_charge
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(snap_day: SKIP, calendar_billing_first_charge: SKIP,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @snap_day = snap_day unless snap_day == SKIP
      unless calendar_billing_first_charge == SKIP
        @calendar_billing_first_charge =
          calendar_billing_first_charge
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      snap_day = hash.key?('snap_day') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:CalendarBillingSnapDay), hash['snap_day']
      ) : SKIP
      calendar_billing_first_charge =
        hash.key?('calendar_billing_first_charge') ? hash['calendar_billing_first_charge'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      CalendarBilling.new(snap_day: snap_day,
                          calendar_billing_first_charge: calendar_billing_first_charge,
                          additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [CalendarBilling | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} snap_day: #{@snap_day}, calendar_billing_first_charge:"\
      " #{@calendar_billing_first_charge}, additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} snap_day: #{@snap_day.inspect}, calendar_billing_first_charge:"\
      " #{@calendar_billing_first_charge.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
