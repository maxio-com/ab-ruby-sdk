# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # One wallet template billing through this Wallet Product, joined to the
  # Feature and plan/component that assigns it, when there is one.
  class WalletProductUsageTemplate < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The name of the product or component the Feature is assigned to. `null`
    # when the wallet template has no assigning Feature.
    # @return [String]
    attr_accessor :plan_name

    # The label set in `wallet_behavior.name` on the Feature, or the standalone
    # wallet's own `name`.
    # @return [String]
    attr_accessor :wallet_template_name

    # The label set in `wallet_behavior.name` on the Feature, or the standalone
    # wallet's own `name`.
    # @return [String]
    attr_accessor :unit_name

    # A best-effort label for how this wallet is expected to be replenished.
    # Currently reports `"Overage"` when the wallet template allows a negative
    # balance, and `null` otherwise; there's no persisted field yet
    # distinguishing, for example, an intended "Auto top-up" from "Purchase
    # more" setup. Treat this as informational, not a stable enum.
    # @return [String]
    attr_accessor :purchase_mechanism

    # A best-effort label for how this wallet is expected to be replenished.
    # Currently reports `"Overage"` when the wallet template allows a negative
    # balance, and `null` otherwise; there's no persisted field yet
    # distinguishing, for example, an intended "Auto top-up" from "Purchase
    # more" setup. Treat this as informational, not a stable enum.
    # @return [String]
    attr_accessor :price_point_name

    # A best-effort label for how this wallet is expected to be replenished.
    # Currently reports `"Overage"` when the wallet template allows a negative
    # balance, and `null` otherwise; there's no persisted field yet
    # distinguishing, for example, an intended "Auto top-up" from "Purchase
    # more" setup. Treat this as informational, not a stable enum.
    # @return [String]
    attr_accessor :currency

    # `false` when the assigning Feature is archived.
    # @return [TrueClass | FalseClass]
    attr_accessor :active

    # `false` when the assigning Feature is archived.
    # @return [Integer]
    attr_accessor :feature_template_id

    # `false` when the assigning Feature is archived.
    # @return [String]
    attr_accessor :feature_template_name

    # `true` when this wallet template is priced at a price point other than the
    # Wallet Product's default.
    # @return [TrueClass | FalseClass]
    attr_accessor :price_point_override

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['plan_name'] = 'plan_name'
      @_hash['wallet_template_name'] = 'wallet_template_name'
      @_hash['unit_name'] = 'unit_name'
      @_hash['purchase_mechanism'] = 'purchase_mechanism'
      @_hash['price_point_name'] = 'price_point_name'
      @_hash['currency'] = 'currency'
      @_hash['active'] = 'active'
      @_hash['feature_template_id'] = 'feature_template_id'
      @_hash['feature_template_name'] = 'feature_template_name'
      @_hash['price_point_override'] = 'price_point_override'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        plan_name
        wallet_template_name
        unit_name
        purchase_mechanism
        price_point_name
        currency
        active
        feature_template_id
        feature_template_name
        price_point_override
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        plan_name
        wallet_template_name
        purchase_mechanism
        price_point_name
        feature_template_id
        feature_template_name
      ]
    end

    def initialize(plan_name: SKIP, wallet_template_name: SKIP, unit_name: SKIP,
                   purchase_mechanism: SKIP, price_point_name: SKIP,
                   currency: SKIP, active: SKIP, feature_template_id: SKIP,
                   feature_template_name: SKIP, price_point_override: SKIP,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @plan_name = plan_name unless plan_name == SKIP
      @wallet_template_name = wallet_template_name unless wallet_template_name == SKIP
      @unit_name = unit_name unless unit_name == SKIP
      @purchase_mechanism = purchase_mechanism unless purchase_mechanism == SKIP
      @price_point_name = price_point_name unless price_point_name == SKIP
      @currency = currency unless currency == SKIP
      @active = active unless active == SKIP
      @feature_template_id = feature_template_id unless feature_template_id == SKIP
      @feature_template_name = feature_template_name unless feature_template_name == SKIP
      @price_point_override = price_point_override unless price_point_override == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      plan_name = hash.key?('plan_name') ? hash['plan_name'] : SKIP
      wallet_template_name =
        hash.key?('wallet_template_name') ? hash['wallet_template_name'] : SKIP
      unit_name = hash.key?('unit_name') ? hash['unit_name'] : SKIP
      purchase_mechanism =
        hash.key?('purchase_mechanism') ? hash['purchase_mechanism'] : SKIP
      price_point_name =
        hash.key?('price_point_name') ? hash['price_point_name'] : SKIP
      currency = hash.key?('currency') ? hash['currency'] : SKIP
      active = hash.key?('active') ? hash['active'] : SKIP
      feature_template_id =
        hash.key?('feature_template_id') ? hash['feature_template_id'] : SKIP
      feature_template_name =
        hash.key?('feature_template_name') ? hash['feature_template_name'] : SKIP
      price_point_override =
        hash.key?('price_point_override') ? hash['price_point_override'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      WalletProductUsageTemplate.new(plan_name: plan_name,
                                     wallet_template_name: wallet_template_name,
                                     unit_name: unit_name,
                                     purchase_mechanism: purchase_mechanism,
                                     price_point_name: price_point_name,
                                     currency: currency,
                                     active: active,
                                     feature_template_id: feature_template_id,
                                     feature_template_name: feature_template_name,
                                     price_point_override: price_point_override,
                                     additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} plan_name: #{@plan_name}, wallet_template_name: #{@wallet_template_name},"\
      " unit_name: #{@unit_name}, purchase_mechanism: #{@purchase_mechanism}, price_point_name:"\
      " #{@price_point_name}, currency: #{@currency}, active: #{@active}, feature_template_id:"\
      " #{@feature_template_id}, feature_template_name: #{@feature_template_name},"\
      " price_point_override: #{@price_point_override}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} plan_name: #{@plan_name.inspect}, wallet_template_name:"\
      " #{@wallet_template_name.inspect}, unit_name: #{@unit_name.inspect}, purchase_mechanism:"\
      " #{@purchase_mechanism.inspect}, price_point_name: #{@price_point_name.inspect}, currency:"\
      " #{@currency.inspect}, active: #{@active.inspect}, feature_template_id:"\
      " #{@feature_template_id.inspect}, feature_template_name: #{@feature_template_name.inspect},"\
      " price_point_override: #{@price_point_override.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
