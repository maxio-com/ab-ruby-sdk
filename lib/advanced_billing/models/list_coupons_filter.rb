# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module AdvancedBilling
  # ListCouponsFilter Model.
  class ListCouponsFilter < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The type of filter you would like to apply to your search. Use in query
    # `filter[date_field]=created_at`.
    # @return [BasicDateField]
    attr_accessor :date_field

    # The start date (format YYYY-MM-DD) with which to filter the date_field.
    # Returns coupons with a timestamp at or after midnight (12:00:00 AM) in
    # your site’s time zone on the date specified. Use in query
    # `filter[start_date]=2011-12-17`.
    # @return [Date]
    attr_accessor :start_date

    # The end date (format YYYY-MM-DD) with which to filter the date_field.
    # Returns coupons with a timestamp up to and including 11:59:59PM in your
    # site’s time zone on the date specified. Use in query
    # `filter[end_date]=2011-12-15`.
    # @return [Date]
    attr_accessor :end_date

    # The start date and time (format YYYY-MM-DD HH:MM:SS) with which to filter
    # the date_field. Returns coupons with a timestamp at or after exact time
    # provided in query. You can specify timezone in query - otherwise your
    # site's time zone will be used. If provided, this parameter will be used
    # instead of start_date. Use in query
    # `filter[start_datetime]=2011-12-19T10:15:30+01:00`.
    # @return [DateTime]
    attr_accessor :start_datetime

    # The end date and time (format YYYY-MM-DD HH:MM:SS) with which to filter
    # the date_field. Returns coupons with a timestamp at or before exact time
    # provided in query. You can specify timezone in query - otherwise your
    # site's time zone will be used. If provided, this parameter will be used
    # instead of end_date. Use in query
    # `filter[end_datetime]=2011-12-1T10:15:30+01:00`.
    # @return [DateTime]
    attr_accessor :end_datetime

    # Allows fetching coupons with matching id based on provided values. Use in
    # query `filter[ids]=1,2,3`.
    # @return [Array[Integer]]
    attr_accessor :ids

    # Allows fetching coupons with matching codes based on provided values. Use
    # in query `filter[codes]=free,free_trial`.
    # @return [Array[String]]
    attr_accessor :codes

    # Allows fetching coupons with matching use_site_exchange_rate based on
    # provided value. Use in query `filter[use_site_exchange_rate]=true`.
    # @return [TrueClass | FalseClass]
    attr_accessor :use_site_exchange_rate

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['date_field'] = 'date_field'
      @_hash['start_date'] = 'start_date'
      @_hash['end_date'] = 'end_date'
      @_hash['start_datetime'] = 'start_datetime'
      @_hash['end_datetime'] = 'end_datetime'
      @_hash['ids'] = 'ids'
      @_hash['codes'] = 'codes'
      @_hash['use_site_exchange_rate'] = 'use_site_exchange_rate'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        date_field
        start_date
        end_date
        start_datetime
        end_datetime
        ids
        codes
        use_site_exchange_rate
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(date_field: SKIP, start_date: SKIP, end_date: SKIP,
                   start_datetime: SKIP, end_datetime: SKIP, ids: SKIP,
                   codes: SKIP, use_site_exchange_rate: SKIP,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @date_field = date_field unless date_field == SKIP
      @start_date = start_date unless start_date == SKIP
      @end_date = end_date unless end_date == SKIP
      @start_datetime = start_datetime unless start_datetime == SKIP
      @end_datetime = end_datetime unless end_datetime == SKIP
      @ids = ids unless ids == SKIP
      @codes = codes unless codes == SKIP
      @use_site_exchange_rate = use_site_exchange_rate unless use_site_exchange_rate == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      date_field = hash.key?('date_field') ? hash['date_field'] : SKIP
      start_date = hash.key?('start_date') ? hash['start_date'] : SKIP
      end_date = hash.key?('end_date') ? hash['end_date'] : SKIP
      start_datetime = if hash.key?('start_datetime')
                         (DateTimeHelper.from_rfc3339(hash['start_datetime']) if hash['start_datetime'])
                       else
                         SKIP
                       end
      end_datetime = if hash.key?('end_datetime')
                       (DateTimeHelper.from_rfc3339(hash['end_datetime']) if hash['end_datetime'])
                     else
                       SKIP
                     end
      ids = hash.key?('ids') ? hash['ids'] : SKIP
      codes = hash.key?('codes') ? hash['codes'] : SKIP
      use_site_exchange_rate =
        hash.key?('use_site_exchange_rate') ? hash['use_site_exchange_rate'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      ListCouponsFilter.new(date_field: date_field,
                            start_date: start_date,
                            end_date: end_date,
                            start_datetime: start_datetime,
                            end_datetime: end_datetime,
                            ids: ids,
                            codes: codes,
                            use_site_exchange_rate: use_site_exchange_rate,
                            additional_properties: additional_properties)
    end

    def to_custom_start_datetime
      DateTimeHelper.to_rfc3339(start_datetime)
    end

    def to_custom_end_datetime
      DateTimeHelper.to_rfc3339(end_datetime)
    end
  end
end
