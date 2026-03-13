# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

require 'date'
module AdvancedBilling
  # ScheduledRenewalConfigurationItem Model.
  class ScheduledRenewalConfigurationItem < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :id

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :subscription_id

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :subscription_renewal_configuration_id

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :item_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :item_type

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :item_subclass

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :price_point_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :price_point_type

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :quantity

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :decimal_quantity

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :created_at

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['subscription_id'] = 'subscription_id'
      @_hash['subscription_renewal_configuration_id'] =
        'subscription_renewal_configuration_id'
      @_hash['item_id'] = 'item_id'
      @_hash['item_type'] = 'item_type'
      @_hash['item_subclass'] = 'item_subclass'
      @_hash['price_point_id'] = 'price_point_id'
      @_hash['price_point_type'] = 'price_point_type'
      @_hash['quantity'] = 'quantity'
      @_hash['decimal_quantity'] = 'decimal_quantity'
      @_hash['created_at'] = 'created_at'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        subscription_id
        subscription_renewal_configuration_id
        item_id
        item_type
        item_subclass
        price_point_id
        price_point_type
        quantity
        decimal_quantity
        created_at
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(id: SKIP, subscription_id: SKIP,
                   subscription_renewal_configuration_id: SKIP, item_id: SKIP,
                   item_type: SKIP, item_subclass: SKIP, price_point_id: SKIP,
                   price_point_type: SKIP, quantity: SKIP,
                   decimal_quantity: SKIP, created_at: SKIP,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @id = id unless id == SKIP
      @subscription_id = subscription_id unless subscription_id == SKIP
      unless subscription_renewal_configuration_id == SKIP
        @subscription_renewal_configuration_id =
          subscription_renewal_configuration_id
      end
      @item_id = item_id unless item_id == SKIP
      @item_type = item_type unless item_type == SKIP
      @item_subclass = item_subclass unless item_subclass == SKIP
      @price_point_id = price_point_id unless price_point_id == SKIP
      @price_point_type = price_point_type unless price_point_type == SKIP
      @quantity = quantity unless quantity == SKIP
      @decimal_quantity = decimal_quantity unless decimal_quantity == SKIP
      @created_at = created_at unless created_at == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      subscription_id =
        hash.key?('subscription_id') ? hash['subscription_id'] : SKIP
      subscription_renewal_configuration_id =
        hash.key?('subscription_renewal_configuration_id') ? hash['subscription_renewal_configuration_id'] : SKIP
      item_id = hash.key?('item_id') ? hash['item_id'] : SKIP
      item_type = hash.key?('item_type') ? hash['item_type'] : SKIP
      item_subclass = hash.key?('item_subclass') ? hash['item_subclass'] : SKIP
      price_point_id =
        hash.key?('price_point_id') ? hash['price_point_id'] : SKIP
      price_point_type =
        hash.key?('price_point_type') ? hash['price_point_type'] : SKIP
      quantity = hash.key?('quantity') ? hash['quantity'] : SKIP
      decimal_quantity =
        hash.key?('decimal_quantity') ? hash['decimal_quantity'] : SKIP
      created_at = if hash.key?('created_at')
                     (DateTimeHelper.from_rfc3339(hash['created_at']) if hash['created_at'])
                   else
                     SKIP
                   end

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      ScheduledRenewalConfigurationItem.new(id: id,
                                            subscription_id: subscription_id,
                                            subscription_renewal_configuration_id: subscription_renewal_configuration_id,
                                            item_id: item_id,
                                            item_type: item_type,
                                            item_subclass: item_subclass,
                                            price_point_id: price_point_id,
                                            price_point_type: price_point_type,
                                            quantity: quantity,
                                            decimal_quantity: decimal_quantity,
                                            created_at: created_at,
                                            additional_properties: additional_properties)
    end

    def to_custom_created_at
      DateTimeHelper.to_rfc3339(created_at)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id}, subscription_id: #{@subscription_id},"\
      " subscription_renewal_configuration_id: #{@subscription_renewal_configuration_id}, item_id:"\
      " #{@item_id}, item_type: #{@item_type}, item_subclass: #{@item_subclass}, price_point_id:"\
      " #{@price_point_id}, price_point_type: #{@price_point_type}, quantity: #{@quantity},"\
      " decimal_quantity: #{@decimal_quantity}, created_at: #{@created_at}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id.inspect}, subscription_id: #{@subscription_id.inspect},"\
      " subscription_renewal_configuration_id: #{@subscription_renewal_configuration_id.inspect},"\
      " item_id: #{@item_id.inspect}, item_type: #{@item_type.inspect}, item_subclass:"\
      " #{@item_subclass.inspect}, price_point_id: #{@price_point_id.inspect}, price_point_type:"\
      " #{@price_point_type.inspect}, quantity: #{@quantity.inspect}, decimal_quantity:"\
      " #{@decimal_quantity.inspect}, created_at: #{@created_at.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
