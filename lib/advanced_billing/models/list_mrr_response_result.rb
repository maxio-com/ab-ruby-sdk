# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # ListMRRResponseResult Model.
  class ListMRRResponseResult < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :page

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :per_page

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :total_pages

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :total_entries

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :currency

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :currency_symbol

    # TODO: Write general description for this method
    # @return [Array[Movement]]
    attr_accessor :movements

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['page'] = 'page'
      @_hash['per_page'] = 'per_page'
      @_hash['total_pages'] = 'total_pages'
      @_hash['total_entries'] = 'total_entries'
      @_hash['currency'] = 'currency'
      @_hash['currency_symbol'] = 'currency_symbol'
      @_hash['movements'] = 'movements'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        page
        per_page
        total_pages
        total_entries
        currency
        currency_symbol
        movements
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(page: SKIP, per_page: SKIP, total_pages: SKIP,
                   total_entries: SKIP, currency: SKIP, currency_symbol: SKIP,
                   movements: SKIP, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @page = page unless page == SKIP
      @per_page = per_page unless per_page == SKIP
      @total_pages = total_pages unless total_pages == SKIP
      @total_entries = total_entries unless total_entries == SKIP
      @currency = currency unless currency == SKIP
      @currency_symbol = currency_symbol unless currency_symbol == SKIP
      @movements = movements unless movements == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      page = hash.key?('page') ? hash['page'] : SKIP
      per_page = hash.key?('per_page') ? hash['per_page'] : SKIP
      total_pages = hash.key?('total_pages') ? hash['total_pages'] : SKIP
      total_entries = hash.key?('total_entries') ? hash['total_entries'] : SKIP
      currency = hash.key?('currency') ? hash['currency'] : SKIP
      currency_symbol =
        hash.key?('currency_symbol') ? hash['currency_symbol'] : SKIP
      # Parameter is an array, so we need to iterate through it
      movements = nil
      unless hash['movements'].nil?
        movements = []
        hash['movements'].each do |structure|
          movements << (Movement.from_hash(structure) if structure)
        end
      end

      movements = SKIP unless hash.key?('movements')

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      ListMRRResponseResult.new(page: page,
                                per_page: per_page,
                                total_pages: total_pages,
                                total_entries: total_entries,
                                currency: currency,
                                currency_symbol: currency_symbol,
                                movements: movements,
                                additional_properties: additional_properties)
    end
  end
end
