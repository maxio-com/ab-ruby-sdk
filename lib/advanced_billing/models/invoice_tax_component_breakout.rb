# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # InvoiceTaxComponentBreakout Model.
  class InvoiceTaxComponentBreakout < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :tax_rule_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :percentage

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :country_code

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :subdivision_code

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :tax_amount

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :taxable_amount

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :tax_exempt_amount

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :non_taxable_amount

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :tax_name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :tax_type

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :rate_type

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :tax_authority_type

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :state_assigned_no

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :tax_sub_type

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['tax_rule_id'] = 'tax_rule_id'
      @_hash['percentage'] = 'percentage'
      @_hash['country_code'] = 'country_code'
      @_hash['subdivision_code'] = 'subdivision_code'
      @_hash['tax_amount'] = 'tax_amount'
      @_hash['taxable_amount'] = 'taxable_amount'
      @_hash['tax_exempt_amount'] = 'tax_exempt_amount'
      @_hash['non_taxable_amount'] = 'non_taxable_amount'
      @_hash['tax_name'] = 'tax_name'
      @_hash['tax_type'] = 'tax_type'
      @_hash['rate_type'] = 'rate_type'
      @_hash['tax_authority_type'] = 'tax_authority_type'
      @_hash['state_assigned_no'] = 'state_assigned_no'
      @_hash['tax_sub_type'] = 'tax_sub_type'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        tax_rule_id
        percentage
        country_code
        subdivision_code
        tax_amount
        taxable_amount
        tax_exempt_amount
        non_taxable_amount
        tax_name
        tax_type
        rate_type
        tax_authority_type
        state_assigned_no
        tax_sub_type
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(tax_rule_id: SKIP, percentage: SKIP, country_code: SKIP,
                   subdivision_code: SKIP, tax_amount: SKIP,
                   taxable_amount: SKIP, tax_exempt_amount: SKIP,
                   non_taxable_amount: SKIP, tax_name: SKIP, tax_type: SKIP,
                   rate_type: SKIP, tax_authority_type: SKIP,
                   state_assigned_no: SKIP, tax_sub_type: SKIP,
                   additional_properties: {})
      @tax_rule_id = tax_rule_id unless tax_rule_id == SKIP
      @percentage = percentage unless percentage == SKIP
      @country_code = country_code unless country_code == SKIP
      @subdivision_code = subdivision_code unless subdivision_code == SKIP
      @tax_amount = tax_amount unless tax_amount == SKIP
      @taxable_amount = taxable_amount unless taxable_amount == SKIP
      @tax_exempt_amount = tax_exempt_amount unless tax_exempt_amount == SKIP
      @non_taxable_amount = non_taxable_amount unless non_taxable_amount == SKIP
      @tax_name = tax_name unless tax_name == SKIP
      @tax_type = tax_type unless tax_type == SKIP
      @rate_type = rate_type unless rate_type == SKIP
      @tax_authority_type = tax_authority_type unless tax_authority_type == SKIP
      @state_assigned_no = state_assigned_no unless state_assigned_no == SKIP
      @tax_sub_type = tax_sub_type unless tax_sub_type == SKIP

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      tax_rule_id = hash.key?('tax_rule_id') ? hash['tax_rule_id'] : SKIP
      percentage = hash.key?('percentage') ? hash['percentage'] : SKIP
      country_code = hash.key?('country_code') ? hash['country_code'] : SKIP
      subdivision_code =
        hash.key?('subdivision_code') ? hash['subdivision_code'] : SKIP
      tax_amount = hash.key?('tax_amount') ? hash['tax_amount'] : SKIP
      taxable_amount =
        hash.key?('taxable_amount') ? hash['taxable_amount'] : SKIP
      tax_exempt_amount =
        hash.key?('tax_exempt_amount') ? hash['tax_exempt_amount'] : SKIP
      non_taxable_amount =
        hash.key?('non_taxable_amount') ? hash['non_taxable_amount'] : SKIP
      tax_name = hash.key?('tax_name') ? hash['tax_name'] : SKIP
      tax_type = hash.key?('tax_type') ? hash['tax_type'] : SKIP
      rate_type = hash.key?('rate_type') ? hash['rate_type'] : SKIP
      tax_authority_type =
        hash.key?('tax_authority_type') ? hash['tax_authority_type'] : SKIP
      state_assigned_no =
        hash.key?('state_assigned_no') ? hash['state_assigned_no'] : SKIP
      tax_sub_type = hash.key?('tax_sub_type') ? hash['tax_sub_type'] : SKIP

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      InvoiceTaxComponentBreakout.new(tax_rule_id: tax_rule_id,
                                      percentage: percentage,
                                      country_code: country_code,
                                      subdivision_code: subdivision_code,
                                      tax_amount: tax_amount,
                                      taxable_amount: taxable_amount,
                                      tax_exempt_amount: tax_exempt_amount,
                                      non_taxable_amount: non_taxable_amount,
                                      tax_name: tax_name,
                                      tax_type: tax_type,
                                      rate_type: rate_type,
                                      tax_authority_type: tax_authority_type,
                                      state_assigned_no: state_assigned_no,
                                      tax_sub_type: tax_sub_type,
                                      additional_properties: hash)
    end

    # Validates an instance of the object from a given value.
    # @param [InvoiceTaxComponentBreakout | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end
  end
end
