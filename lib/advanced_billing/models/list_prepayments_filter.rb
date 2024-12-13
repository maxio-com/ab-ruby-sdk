# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # ListPrepaymentsFilter Model.
  class ListPrepaymentsFilter < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The type of filter you would like to apply to your search. `created_at` -
    # Time when prepayment was created. `application_at` - Time when prepayment
    # was applied to invoice. Use in query `filter[date_field]=created_at`.
    # @return [ListPrepaymentDateField]
    attr_accessor :date_field

    # The start date (format YYYY-MM-DD) with which to filter the date_field.
    # Returns prepayments with a timestamp at or after midnight (12:00:00 AM) in
    # your site's time zone on the date specified. Use in query:
    # `filter[start_date]=2011-12-15`.
    # @return [Date]
    attr_accessor :start_date

    # The end date (format YYYY-MM-DD) with which to filter the date_field.
    # Returns prepayments with a timestamp up to and including 11:59:59PM in
    # your site's time zone on the date specified. Use in query:
    # `filter[end_date]=2011-12-15`.
    # @return [Date]
    attr_accessor :end_date

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['date_field'] = 'date_field'
      @_hash['start_date'] = 'start_date'
      @_hash['end_date'] = 'end_date'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        date_field
        start_date
        end_date
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(date_field: SKIP, start_date: SKIP, end_date: SKIP,
                   additional_properties : {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @date_field = date_field unless date_field == SKIP
      @start_date = start_date unless start_date == SKIP
      @end_date = end_date unless end_date == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      date_field = hash.key?('date_field') ? hash['date_field'] : SKIP
      start_date = hash.key?('start_date') ? hash['start_date'] : SKIP
      end_date = hash.key?('end_date') ? hash['end_date'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      ListPrepaymentsFilter.new(date_field: date_field,
                                start_date: start_date,
                                end_date: end_date,
                                additional_properties: additional_properties)
    end
  end
end
