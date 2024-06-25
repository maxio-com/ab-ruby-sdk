# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # MultiInvoicePayment Model.
  class MultiInvoicePayment < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The numeric ID of the transaction.
    # @return [Integer]
    attr_accessor :transaction_id

    # Dollar amount of the sum of the paid invoices.
    # @return [String]
    attr_accessor :total_amount

    # The ISO 4217 currency code (3 character string) representing the currency
    # of invoice transaction.
    # @return [String]
    attr_accessor :currency_code

    # The ISO 4217 currency code (3 character string) representing the currency
    # of invoice transaction.
    # @return [Array[InvoicePaymentApplication]]
    attr_accessor :applications

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['transaction_id'] = 'transaction_id'
      @_hash['total_amount'] = 'total_amount'
      @_hash['currency_code'] = 'currency_code'
      @_hash['applications'] = 'applications'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        transaction_id
        total_amount
        currency_code
        applications
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(transaction_id: SKIP, total_amount: SKIP,
                   currency_code: SKIP, applications: SKIP,
                   additional_properties: {})
      @transaction_id = transaction_id unless transaction_id == SKIP
      @total_amount = total_amount unless total_amount == SKIP
      @currency_code = currency_code unless currency_code == SKIP
      @applications = applications unless applications == SKIP

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      transaction_id =
        hash.key?('transaction_id') ? hash['transaction_id'] : SKIP
      total_amount = hash.key?('total_amount') ? hash['total_amount'] : SKIP
      currency_code = hash.key?('currency_code') ? hash['currency_code'] : SKIP
      # Parameter is an array, so we need to iterate through it
      applications = nil
      unless hash['applications'].nil?
        applications = []
        hash['applications'].each do |structure|
          applications << (InvoicePaymentApplication.from_hash(structure) if structure)
        end
      end

      applications = SKIP unless hash.key?('applications')

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      MultiInvoicePayment.new(transaction_id: transaction_id,
                              total_amount: total_amount,
                              currency_code: currency_code,
                              applications: applications,
                              additional_properties: hash)
    end
  end
end
