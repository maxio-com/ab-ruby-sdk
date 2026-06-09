# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # CreateUsage Model.
  class CreateUsage < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # integer by default or decimal number if fractional quantities are enabled
    # for the component
    # @return [Float]
    attr_accessor :quantity

    # integer by default or decimal number if fractional quantities are enabled
    # for the component
    # @return [String]
    attr_accessor :price_point_id

    # integer by default or decimal number if fractional quantities are enabled
    # for the component
    # @return [String]
    attr_accessor :memo

    # Billing schedule settings for component allocations or usages on
    # multi-frequency subscriptions. Use this to start a component's billing
    # period on a custom date instead of aligning with the product charge
    # schedule.
    # @return [BillingSchedule]
    attr_accessor :billing_schedule

    # Create or update custom pricing unique to the subscription. Used in place
    # of `price_point_id`.
    # @return [ComponentCustomPrice]
    attr_accessor :custom_price

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['quantity'] = 'quantity'
      @_hash['price_point_id'] = 'price_point_id'
      @_hash['memo'] = 'memo'
      @_hash['billing_schedule'] = 'billing_schedule'
      @_hash['custom_price'] = 'custom_price'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        quantity
        price_point_id
        memo
        billing_schedule
        custom_price
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(quantity: SKIP, price_point_id: SKIP, memo: SKIP,
                   billing_schedule: SKIP, custom_price: SKIP,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @quantity = quantity unless quantity == SKIP
      @price_point_id = price_point_id unless price_point_id == SKIP
      @memo = memo unless memo == SKIP
      @billing_schedule = billing_schedule unless billing_schedule == SKIP
      @custom_price = custom_price unless custom_price == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      quantity = hash.key?('quantity') ? hash['quantity'] : SKIP
      price_point_id =
        hash.key?('price_point_id') ? hash['price_point_id'] : SKIP
      memo = hash.key?('memo') ? hash['memo'] : SKIP
      billing_schedule = BillingSchedule.from_hash(hash['billing_schedule']) if
        hash['billing_schedule']
      custom_price = ComponentCustomPrice.from_hash(hash['custom_price']) if hash['custom_price']

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      CreateUsage.new(quantity: quantity,
                      price_point_id: price_point_id,
                      memo: memo,
                      billing_schedule: billing_schedule,
                      custom_price: custom_price,
                      additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} quantity: #{@quantity}, price_point_id: #{@price_point_id}, memo: #{@memo},"\
      " billing_schedule: #{@billing_schedule}, custom_price: #{@custom_price},"\
      " additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} quantity: #{@quantity.inspect}, price_point_id: #{@price_point_id.inspect},"\
      " memo: #{@memo.inspect}, billing_schedule: #{@billing_schedule.inspect}, custom_price:"\
      " #{@custom_price.inspect}, additional_properties: #{get_additional_properties}>"
    end
  end
end
