# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

require 'date'
module AdvancedBilling
  # Nested filter used for List Subscription Components For Site Filter
  class SubscriptionFilter < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Allows fetching components allocations that belong to the subscription
    # with matching states based on provided values. To use this filter you also
    # have to include the following param in the request `include=subscription`.
    # Use in query
    # `filter[subscription][states]=active,canceled&include=subscription`.
    # @return [Array[SubscriptionStateFilter]]
    attr_accessor :states

    # The type of filter you'd like to apply to your search. To use this filter
    # you also have to include the following param in the request
    # `include=subscription`.
    # @return [SubscriptionListDateField]
    attr_accessor :date_field

    # The start date (format YYYY-MM-DD) with which to filter the date_field.
    # Returns components that belong to the subscription with a timestamp at or
    # after midnight (12:00:00 AM) in your site’s time zone on the date
    # specified. To use this filter you also have to include the following param
    # in the request `include=subscription`.
    # @return [Date]
    attr_accessor :start_date

    # The end date (format YYYY-MM-DD) with which to filter the date_field.
    # Returns components that belong to the subscription with a timestamp up to
    # and including 11:59:59PM in your site’s time zone on the date specified.
    # To use this filter you also have to include the following param in the
    # request `include=subscription`.
    # @return [Date]
    attr_accessor :end_date

    # The start date and time (format YYYY-MM-DD HH:MM:SS) with which to filter
    # the date_field. Returns components that belong to the subscription with a
    # timestamp at or after exact time provided in query. You can specify
    # timezone in query - otherwise your site''s time zone will be used. If
    # provided, this parameter will be used instead of start_date. To use this
    # filter you also have to include the following param in the request
    # `include=subscription`.
    # @return [DateTime]
    attr_accessor :start_datetime

    # The end date and time (format YYYY-MM-DD HH:MM:SS) with which to filter
    # the date_field. Returns components that belong to the subscription with a
    # timestamp at or before exact time provided in query. You can specify
    # timezone in query - otherwise your site''s time zone will be used. If
    # provided, this parameter will be used instead of end_date. To use this
    # filter you also have to include the following param in the request
    # `include=subscription`.
    # @return [DateTime]
    attr_accessor :end_datetime

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['states'] = 'states'
      @_hash['date_field'] = 'date_field'
      @_hash['start_date'] = 'start_date'
      @_hash['end_date'] = 'end_date'
      @_hash['start_datetime'] = 'start_datetime'
      @_hash['end_datetime'] = 'end_datetime'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        states
        date_field
        start_date
        end_date
        start_datetime
        end_datetime
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(states: SKIP, date_field: SKIP, start_date: SKIP,
                   end_date: SKIP, start_datetime: SKIP, end_datetime: SKIP,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @states = states unless states == SKIP
      @date_field = date_field unless date_field == SKIP
      @start_date = start_date unless start_date == SKIP
      @end_date = end_date unless end_date == SKIP
      @start_datetime = start_datetime unless start_datetime == SKIP
      @end_datetime = end_datetime unless end_datetime == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      states = hash.key?('states') ? hash['states'] : SKIP
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

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      SubscriptionFilter.new(states: states,
                             date_field: date_field,
                             start_date: start_date,
                             end_date: end_date,
                             start_datetime: start_datetime,
                             end_datetime: end_datetime,
                             additional_properties: additional_properties)
    end

    def to_custom_start_datetime
      DateTimeHelper.to_rfc3339(start_datetime)
    end

    def to_custom_end_datetime
      DateTimeHelper.to_rfc3339(end_datetime)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} states: #{@states}, date_field: #{@date_field}, start_date: #{@start_date},"\
      " end_date: #{@end_date}, start_datetime: #{@start_datetime}, end_datetime:"\
      " #{@end_datetime}, additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} states: #{@states.inspect}, date_field: #{@date_field.inspect}, start_date:"\
      " #{@start_date.inspect}, end_date: #{@end_date.inspect}, start_datetime:"\
      " #{@start_datetime.inspect}, end_datetime: #{@end_datetime.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
