# maxio_advanced_billing_formerly_chargify_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MaxioAdvancedBillingFormerlyChargifyApi
  # OfferItem Model.
  class OfferItem < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :component_id

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :price_point_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :starting_quantity

    # TODO: Write general description for this method
    # @return [TrueClass | FalseClass]
    attr_accessor :editable

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :component_unit_price

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :component_name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :price_point_name

    # TODO: Write general description for this method
    # @return [Array[Object]]
    attr_accessor :currency_prices

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['component_id'] = 'component_id'
      @_hash['price_point_id'] = 'price_point_id'
      @_hash['starting_quantity'] = 'starting_quantity'
      @_hash['editable'] = 'editable'
      @_hash['component_unit_price'] = 'component_unit_price'
      @_hash['component_name'] = 'component_name'
      @_hash['price_point_name'] = 'price_point_name'
      @_hash['currency_prices'] = 'currency_prices'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        component_id
        price_point_id
        starting_quantity
        editable
        component_unit_price
        component_name
        price_point_name
        currency_prices
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(component_id = SKIP,
                   price_point_id = SKIP,
                   starting_quantity = SKIP,
                   editable = SKIP,
                   component_unit_price = SKIP,
                   component_name = SKIP,
                   price_point_name = SKIP,
                   currency_prices = SKIP)
      @component_id = component_id unless component_id == SKIP
      @price_point_id = price_point_id unless price_point_id == SKIP
      @starting_quantity = starting_quantity unless starting_quantity == SKIP
      @editable = editable unless editable == SKIP
      @component_unit_price = component_unit_price unless component_unit_price == SKIP
      @component_name = component_name unless component_name == SKIP
      @price_point_name = price_point_name unless price_point_name == SKIP
      @currency_prices = currency_prices unless currency_prices == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      component_id = hash.key?('component_id') ? hash['component_id'] : SKIP
      price_point_id =
        hash.key?('price_point_id') ? hash['price_point_id'] : SKIP
      starting_quantity =
        hash.key?('starting_quantity') ? hash['starting_quantity'] : SKIP
      editable = hash.key?('editable') ? hash['editable'] : SKIP
      component_unit_price =
        hash.key?('component_unit_price') ? hash['component_unit_price'] : SKIP
      component_name =
        hash.key?('component_name') ? hash['component_name'] : SKIP
      price_point_name =
        hash.key?('price_point_name') ? hash['price_point_name'] : SKIP
      currency_prices =
        hash.key?('currency_prices') ? hash['currency_prices'] : SKIP

      # Create object from extracted values.
      OfferItem.new(component_id,
                    price_point_id,
                    starting_quantity,
                    editable,
                    component_unit_price,
                    component_name,
                    price_point_name,
                    currency_prices)
    end
  end
end
