# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # AllocateComponents Model.
  class AllocateComponents < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :proration_upgrade_scheme

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :proration_downgrade_scheme

    # TODO: Write general description for this method
    # @return [Array[CreateAllocation]]
    attr_accessor :allocations

    # TODO: Write general description for this method
    # @return [TrueClass | FalseClass]
    attr_accessor :accrue_charge

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

    # (Optional) If not passed, the allocation(s) will use the payment
    # collection method on the subscription
    # @return [CollectionMethod]
    attr_accessor :payment_collection_method

    # If true, if the immediate component payment fails, initiate dunning for
    # the subscription. 
    # Otherwise, leave the charges on the subscription to pay for at renewal.
    # @return [TrueClass | FalseClass]
    attr_accessor :initiate_dunning

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['proration_upgrade_scheme'] = 'proration_upgrade_scheme'
      @_hash['proration_downgrade_scheme'] = 'proration_downgrade_scheme'
      @_hash['allocations'] = 'allocations'
      @_hash['accrue_charge'] = 'accrue_charge'
      @_hash['upgrade_charge'] = 'upgrade_charge'
      @_hash['downgrade_credit'] = 'downgrade_credit'
      @_hash['payment_collection_method'] = 'payment_collection_method'
      @_hash['initiate_dunning'] = 'initiate_dunning'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        proration_upgrade_scheme
        proration_downgrade_scheme
        allocations
        accrue_charge
        upgrade_charge
        downgrade_credit
        payment_collection_method
        initiate_dunning
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        upgrade_charge
        downgrade_credit
      ]
    end

    def initialize(proration_upgrade_scheme: SKIP,
                   proration_downgrade_scheme: SKIP, allocations: SKIP,
                   accrue_charge: SKIP, upgrade_charge: SKIP,
                   downgrade_credit: SKIP, payment_collection_method: SKIP,
                   initiate_dunning: SKIP, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @proration_upgrade_scheme = proration_upgrade_scheme unless proration_upgrade_scheme == SKIP
      unless proration_downgrade_scheme == SKIP
        @proration_downgrade_scheme =
          proration_downgrade_scheme
      end
      @allocations = allocations unless allocations == SKIP
      @accrue_charge = accrue_charge unless accrue_charge == SKIP
      @upgrade_charge = upgrade_charge unless upgrade_charge == SKIP
      @downgrade_credit = downgrade_credit unless downgrade_credit == SKIP
      unless payment_collection_method == SKIP
        @payment_collection_method =
          payment_collection_method
      end
      @initiate_dunning = initiate_dunning unless initiate_dunning == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      proration_upgrade_scheme =
        hash.key?('proration_upgrade_scheme') ? hash['proration_upgrade_scheme'] : SKIP
      proration_downgrade_scheme =
        hash.key?('proration_downgrade_scheme') ? hash['proration_downgrade_scheme'] : SKIP
      # Parameter is an array, so we need to iterate through it
      allocations = nil
      unless hash['allocations'].nil?
        allocations = []
        hash['allocations'].each do |structure|
          allocations << (CreateAllocation.from_hash(structure) if structure)
        end
      end

      allocations = SKIP unless hash.key?('allocations')
      accrue_charge = hash.key?('accrue_charge') ? hash['accrue_charge'] : SKIP
      upgrade_charge =
        hash.key?('upgrade_charge') ? hash['upgrade_charge'] : SKIP
      downgrade_credit =
        hash.key?('downgrade_credit') ? hash['downgrade_credit'] : SKIP
      payment_collection_method =
        hash.key?('payment_collection_method') ? hash['payment_collection_method'] : SKIP
      initiate_dunning =
        hash.key?('initiate_dunning') ? hash['initiate_dunning'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      AllocateComponents.new(proration_upgrade_scheme: proration_upgrade_scheme,
                             proration_downgrade_scheme: proration_downgrade_scheme,
                             allocations: allocations,
                             accrue_charge: accrue_charge,
                             upgrade_charge: upgrade_charge,
                             downgrade_credit: downgrade_credit,
                             payment_collection_method: payment_collection_method,
                             initiate_dunning: initiate_dunning,
                             additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} proration_upgrade_scheme: #{@proration_upgrade_scheme},"\
      " proration_downgrade_scheme: #{@proration_downgrade_scheme}, allocations: #{@allocations},"\
      " accrue_charge: #{@accrue_charge}, upgrade_charge: #{@upgrade_charge}, downgrade_credit:"\
      " #{@downgrade_credit}, payment_collection_method: #{@payment_collection_method},"\
      " initiate_dunning: #{@initiate_dunning}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} proration_upgrade_scheme: #{@proration_upgrade_scheme.inspect},"\
      " proration_downgrade_scheme: #{@proration_downgrade_scheme.inspect}, allocations:"\
      " #{@allocations.inspect}, accrue_charge: #{@accrue_charge.inspect}, upgrade_charge:"\
      " #{@upgrade_charge.inspect}, downgrade_credit: #{@downgrade_credit.inspect},"\
      " payment_collection_method: #{@payment_collection_method.inspect}, initiate_dunning:"\
      " #{@initiate_dunning.inspect}, additional_properties: #{get_additional_properties}>"
    end
  end
end
