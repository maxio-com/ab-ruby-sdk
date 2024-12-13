# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module AdvancedBilling
  # AllocationPreview Model.
  class AllocationPreview < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :start_date

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :end_date

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :subtotal_in_cents

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :total_tax_in_cents

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :total_discount_in_cents

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :total_in_cents

    # TODO: Write general description for this method
    # @return [AllocationPreviewDirection]
    attr_accessor :direction

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :proration_scheme

    # TODO: Write general description for this method
    # @return [Array[AllocationPreviewLineItem]]
    attr_accessor :line_items

    # TODO: Write general description for this method
    # @return [TrueClass | FalseClass]
    attr_accessor :accrue_charge

    # TODO: Write general description for this method
    # @return [Array[AllocationPreviewItem]]
    attr_accessor :allocations

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :period_type

    # An integer representing the amount of the subscription's current balance
    # @return [Integer]
    attr_accessor :existing_balance_in_cents

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['start_date'] = 'start_date'
      @_hash['end_date'] = 'end_date'
      @_hash['subtotal_in_cents'] = 'subtotal_in_cents'
      @_hash['total_tax_in_cents'] = 'total_tax_in_cents'
      @_hash['total_discount_in_cents'] = 'total_discount_in_cents'
      @_hash['total_in_cents'] = 'total_in_cents'
      @_hash['direction'] = 'direction'
      @_hash['proration_scheme'] = 'proration_scheme'
      @_hash['line_items'] = 'line_items'
      @_hash['accrue_charge'] = 'accrue_charge'
      @_hash['allocations'] = 'allocations'
      @_hash['period_type'] = 'period_type'
      @_hash['existing_balance_in_cents'] = 'existing_balance_in_cents'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        start_date
        end_date
        subtotal_in_cents
        total_tax_in_cents
        total_discount_in_cents
        total_in_cents
        direction
        proration_scheme
        line_items
        accrue_charge
        allocations
        period_type
        existing_balance_in_cents
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(start_date: SKIP, end_date: SKIP, subtotal_in_cents: SKIP,
                   total_tax_in_cents: SKIP, total_discount_in_cents: SKIP,
                   total_in_cents: SKIP, direction: SKIP,
                   proration_scheme: SKIP, line_items: SKIP,
                   accrue_charge: SKIP, allocations: SKIP, period_type: SKIP,
                   existing_balance_in_cents: SKIP, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @start_date = start_date unless start_date == SKIP
      @end_date = end_date unless end_date == SKIP
      @subtotal_in_cents = subtotal_in_cents unless subtotal_in_cents == SKIP
      @total_tax_in_cents = total_tax_in_cents unless total_tax_in_cents == SKIP
      @total_discount_in_cents = total_discount_in_cents unless total_discount_in_cents == SKIP
      @total_in_cents = total_in_cents unless total_in_cents == SKIP
      @direction = direction unless direction == SKIP
      @proration_scheme = proration_scheme unless proration_scheme == SKIP
      @line_items = line_items unless line_items == SKIP
      @accrue_charge = accrue_charge unless accrue_charge == SKIP
      @allocations = allocations unless allocations == SKIP
      @period_type = period_type unless period_type == SKIP
      unless existing_balance_in_cents == SKIP
        @existing_balance_in_cents =
          existing_balance_in_cents
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      start_date = if hash.key?('start_date')
                     (DateTimeHelper.from_rfc3339(hash['start_date']) if hash['start_date'])
                   else
                     SKIP
                   end
      end_date = if hash.key?('end_date')
                   (DateTimeHelper.from_rfc3339(hash['end_date']) if hash['end_date'])
                 else
                   SKIP
                 end
      subtotal_in_cents =
        hash.key?('subtotal_in_cents') ? hash['subtotal_in_cents'] : SKIP
      total_tax_in_cents =
        hash.key?('total_tax_in_cents') ? hash['total_tax_in_cents'] : SKIP
      total_discount_in_cents =
        hash.key?('total_discount_in_cents') ? hash['total_discount_in_cents'] : SKIP
      total_in_cents =
        hash.key?('total_in_cents') ? hash['total_in_cents'] : SKIP
      direction = hash.key?('direction') ? hash['direction'] : SKIP
      proration_scheme =
        hash.key?('proration_scheme') ? hash['proration_scheme'] : SKIP
      # Parameter is an array, so we need to iterate through it
      line_items = nil
      unless hash['line_items'].nil?
        line_items = []
        hash['line_items'].each do |structure|
          line_items << (AllocationPreviewLineItem.from_hash(structure) if structure)
        end
      end

      line_items = SKIP unless hash.key?('line_items')
      accrue_charge = hash.key?('accrue_charge') ? hash['accrue_charge'] : SKIP
      # Parameter is an array, so we need to iterate through it
      allocations = nil
      unless hash['allocations'].nil?
        allocations = []
        hash['allocations'].each do |structure|
          allocations << (AllocationPreviewItem.from_hash(structure) if structure)
        end
      end

      allocations = SKIP unless hash.key?('allocations')
      period_type = hash.key?('period_type') ? hash['period_type'] : SKIP
      existing_balance_in_cents =
        hash.key?('existing_balance_in_cents') ? hash['existing_balance_in_cents'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      AllocationPreview.new(start_date: start_date,
                            end_date: end_date,
                            subtotal_in_cents: subtotal_in_cents,
                            total_tax_in_cents: total_tax_in_cents,
                            total_discount_in_cents: total_discount_in_cents,
                            total_in_cents: total_in_cents,
                            direction: direction,
                            proration_scheme: proration_scheme,
                            line_items: line_items,
                            accrue_charge: accrue_charge,
                            allocations: allocations,
                            period_type: period_type,
                            existing_balance_in_cents: existing_balance_in_cents,
                            additional_properties: additional_properties)
    end

    def to_custom_start_date
      DateTimeHelper.to_rfc3339(start_date)
    end

    def to_custom_end_date
      DateTimeHelper.to_rfc3339(end_date)
    end
  end
end
