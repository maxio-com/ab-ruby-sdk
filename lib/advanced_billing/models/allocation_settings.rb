# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # AllocationSettings Model.
  class AllocationSettings < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The type of credit to be created when upgrading/downgrading. Defaults to
    # the component and then site setting if one is not provided.
    # Available values: `full`, `prorated`, `none`.
    # @return [CreditType]
    attr_accessor :upgrade_charge

    # The type of credit to be created when upgrading/downgrading. Defaults to
    # the component and then site setting if one is not provided.
    # Available values: `full`, `prorated`, `none`.
    # @return [CreditType]
    attr_accessor :downgrade_credit

    # Either "true" or "false".
    # @return [String]
    attr_accessor :accrue_charge

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['upgrade_charge'] = 'upgrade_charge'
      @_hash['downgrade_credit'] = 'downgrade_credit'
      @_hash['accrue_charge'] = 'accrue_charge'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        upgrade_charge
        downgrade_credit
        accrue_charge
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        upgrade_charge
        downgrade_credit
      ]
    end

    def initialize(upgrade_charge: SKIP, downgrade_credit: SKIP,
                   accrue_charge: SKIP, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @upgrade_charge = upgrade_charge unless upgrade_charge == SKIP
      @downgrade_credit = downgrade_credit unless downgrade_credit == SKIP
      @accrue_charge = accrue_charge unless accrue_charge == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      upgrade_charge =
        hash.key?('upgrade_charge') ? hash['upgrade_charge'] : SKIP
      downgrade_credit =
        hash.key?('downgrade_credit') ? hash['downgrade_credit'] : SKIP
      accrue_charge = hash.key?('accrue_charge') ? hash['accrue_charge'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      AllocationSettings.new(upgrade_charge: upgrade_charge,
                             downgrade_credit: downgrade_credit,
                             accrue_charge: accrue_charge,
                             additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} upgrade_charge: #{@upgrade_charge}, downgrade_credit: #{@downgrade_credit},"\
      " accrue_charge: #{@accrue_charge}, additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} upgrade_charge: #{@upgrade_charge.inspect}, downgrade_credit:"\
      " #{@downgrade_credit.inspect}, accrue_charge: #{@accrue_charge.inspect},"\
      " additional_properties: #{get_additional_properties}>"
    end
  end
end
