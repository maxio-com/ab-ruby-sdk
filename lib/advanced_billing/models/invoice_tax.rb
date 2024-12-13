# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # InvoiceTax Model.
  class InvoiceTax < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :uid

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :title

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :description

    # TODO: Write general description for this method
    # @return [ProformaInvoiceTaxSourceType]
    attr_accessor :source_type

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :source_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :percentage

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :taxable_amount

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :tax_amount

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :transaction_id

    # TODO: Write general description for this method
    # @return [Array[InvoiceTaxBreakout]]
    attr_accessor :line_item_breakouts

    # TODO: Write general description for this method
    # @return [Array[InvoiceTaxComponentBreakout]]
    attr_accessor :tax_component_breakouts

    # TODO: Write general description for this method
    # @return [TrueClass | FalseClass]
    attr_accessor :eu_vat

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :type

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :tax_exempt_amount

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['uid'] = 'uid'
      @_hash['title'] = 'title'
      @_hash['description'] = 'description'
      @_hash['source_type'] = 'source_type'
      @_hash['source_id'] = 'source_id'
      @_hash['percentage'] = 'percentage'
      @_hash['taxable_amount'] = 'taxable_amount'
      @_hash['tax_amount'] = 'tax_amount'
      @_hash['transaction_id'] = 'transaction_id'
      @_hash['line_item_breakouts'] = 'line_item_breakouts'
      @_hash['tax_component_breakouts'] = 'tax_component_breakouts'
      @_hash['eu_vat'] = 'eu_vat'
      @_hash['type'] = 'type'
      @_hash['tax_exempt_amount'] = 'tax_exempt_amount'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        uid
        title
        description
        source_type
        source_id
        percentage
        taxable_amount
        tax_amount
        transaction_id
        line_item_breakouts
        tax_component_breakouts
        eu_vat
        type
        tax_exempt_amount
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        description
      ]
    end

    def initialize(uid: SKIP, title: SKIP, description: SKIP, source_type: SKIP,
                   source_id: SKIP, percentage: SKIP, taxable_amount: SKIP,
                   tax_amount: SKIP, transaction_id: SKIP,
                   line_item_breakouts: SKIP, tax_component_breakouts: SKIP,
                   eu_vat: SKIP, type: SKIP, tax_exempt_amount: SKIP,
                   additional_properties : {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @uid = uid unless uid == SKIP
      @title = title unless title == SKIP
      @description = description unless description == SKIP
      @source_type = source_type unless source_type == SKIP
      @source_id = source_id unless source_id == SKIP
      @percentage = percentage unless percentage == SKIP
      @taxable_amount = taxable_amount unless taxable_amount == SKIP
      @tax_amount = tax_amount unless tax_amount == SKIP
      @transaction_id = transaction_id unless transaction_id == SKIP
      @line_item_breakouts = line_item_breakouts unless line_item_breakouts == SKIP
      @tax_component_breakouts = tax_component_breakouts unless tax_component_breakouts == SKIP
      @eu_vat = eu_vat unless eu_vat == SKIP
      @type = type unless type == SKIP
      @tax_exempt_amount = tax_exempt_amount unless tax_exempt_amount == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      uid = hash.key?('uid') ? hash['uid'] : SKIP
      title = hash.key?('title') ? hash['title'] : SKIP
      description = hash.key?('description') ? hash['description'] : SKIP
      source_type = hash.key?('source_type') ? hash['source_type'] : SKIP
      source_id = hash.key?('source_id') ? hash['source_id'] : SKIP
      percentage = hash.key?('percentage') ? hash['percentage'] : SKIP
      taxable_amount =
        hash.key?('taxable_amount') ? hash['taxable_amount'] : SKIP
      tax_amount = hash.key?('tax_amount') ? hash['tax_amount'] : SKIP
      transaction_id =
        hash.key?('transaction_id') ? hash['transaction_id'] : SKIP
      # Parameter is an array, so we need to iterate through it
      line_item_breakouts = nil
      unless hash['line_item_breakouts'].nil?
        line_item_breakouts = []
        hash['line_item_breakouts'].each do |structure|
          line_item_breakouts << (InvoiceTaxBreakout.from_hash(structure) if structure)
        end
      end

      line_item_breakouts = SKIP unless hash.key?('line_item_breakouts')
      # Parameter is an array, so we need to iterate through it
      tax_component_breakouts = nil
      unless hash['tax_component_breakouts'].nil?
        tax_component_breakouts = []
        hash['tax_component_breakouts'].each do |structure|
          tax_component_breakouts << (InvoiceTaxComponentBreakout.from_hash(structure) if structure)
        end
      end

      tax_component_breakouts = SKIP unless hash.key?('tax_component_breakouts')
      eu_vat = hash.key?('eu_vat') ? hash['eu_vat'] : SKIP
      type = hash.key?('type') ? hash['type'] : SKIP
      tax_exempt_amount =
        hash.key?('tax_exempt_amount') ? hash['tax_exempt_amount'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      InvoiceTax.new(uid: uid,
                     title: title,
                     description: description,
                     source_type: source_type,
                     source_id: source_id,
                     percentage: percentage,
                     taxable_amount: taxable_amount,
                     tax_amount: tax_amount,
                     transaction_id: transaction_id,
                     line_item_breakouts: line_item_breakouts,
                     tax_component_breakouts: tax_component_breakouts,
                     eu_vat: eu_vat,
                     type: type,
                     tax_exempt_amount: tax_exempt_amount,
                     additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [InvoiceTax | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end
  end
end
