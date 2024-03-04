# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # ListCreditNotesResponse Model.
  class ListCreditNotesResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Array[CreditNote]]
    attr_accessor :credit_notes

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['credit_notes'] = 'credit_notes'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      []
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(credit_notes = nil,
                   additional_properties = {})
      @credit_notes = credit_notes

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      credit_notes = nil
      unless hash['credit_notes'].nil?
        credit_notes = []
        hash['credit_notes'].each do |structure|
          credit_notes << (CreditNote.from_hash(structure) if structure)
        end
      end

      credit_notes = nil unless hash.key?('credit_notes')

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      ListCreditNotesResponse.new(credit_notes,
                                  hash)
    end
  end
end
