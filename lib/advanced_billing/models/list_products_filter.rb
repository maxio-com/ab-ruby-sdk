# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # ListProductsFilter Model.
  class ListProductsFilter < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Allows fetching products with matching id based on provided values. Use in
    # query `filter[ids]=1,2,3`.
    # @return [Array[Integer]]
    attr_accessor :ids

    # Allows fetching products only if a prepaid product price point is present
    # or not. To use this filter you also have to include the following param in
    # the request `include=prepaid_product_price_point`. Use in query
    # `filter[prepaid_product_price_point][product_price_point_id]=not_null`.
    # @return [PrepaidProductPricePointFilter]
    attr_accessor :prepaid_product_price_point

    # Allows fetching products with matching use_site_exchange_rate based on
    # provided value (refers to default price point). Use in query
    # `filter[use_site_exchange_rate]=true`.
    # @return [TrueClass | FalseClass]
    attr_accessor :use_site_exchange_rate

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['ids'] = 'ids'
      @_hash['prepaid_product_price_point'] = 'prepaid_product_price_point'
      @_hash['use_site_exchange_rate'] = 'use_site_exchange_rate'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        ids
        prepaid_product_price_point
        use_site_exchange_rate
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(ids: SKIP, prepaid_product_price_point: SKIP,
                   use_site_exchange_rate: SKIP, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @ids = ids unless ids == SKIP
      unless prepaid_product_price_point == SKIP
        @prepaid_product_price_point =
          prepaid_product_price_point
      end
      @use_site_exchange_rate = use_site_exchange_rate unless use_site_exchange_rate == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      ids = hash.key?('ids') ? hash['ids'] : SKIP
      if hash['prepaid_product_price_point']
        prepaid_product_price_point = PrepaidProductPricePointFilter.from_hash(hash['prepaid_product_price_point'])
      end
      use_site_exchange_rate =
        hash.key?('use_site_exchange_rate') ? hash['use_site_exchange_rate'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      ListProductsFilter.new(ids: ids,
                             prepaid_product_price_point: prepaid_product_price_point,
                             use_site_exchange_rate: use_site_exchange_rate,
                             additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} ids: #{@ids}, prepaid_product_price_point: #{@prepaid_product_price_point},"\
      " use_site_exchange_rate: #{@use_site_exchange_rate}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} ids: #{@ids.inspect}, prepaid_product_price_point:"\
      " #{@prepaid_product_price_point.inspect}, use_site_exchange_rate:"\
      " #{@use_site_exchange_rate.inspect}, additional_properties: #{get_additional_properties}>"
    end
  end
end
