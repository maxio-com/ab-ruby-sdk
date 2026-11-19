# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # A summary of the Wallet Product's default price point, for rendering a
  # catalog listing without a separate price points call.
  class WalletProductPricePointSummary < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Number of archived price points on this Wallet Product.
    # @return [Integer]
    attr_accessor :archived_count

    # The default price point's pricing scheme. `null` if the Wallet Product has
    # no default price point.
    # @return [String]
    attr_accessor :pricing_scheme

    # Number of price brackets on the default price point. A `per_unit` scheme
    # always stores exactly one synthesized bracket, so this is `1` for
    # `per_unit`, not `0`.
    # @return [Integer]
    attr_accessor :tier_count

    # The unit price of the default price point's first bracket, as a decimal
    # string. `null` if there are no brackets.
    # @return [String]
    attr_accessor :entry_price

    # The unit price of the default price point's last bracket, as a decimal
    # string. `null` if there are no brackets.
    # @return [String]
    attr_accessor :final_price

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['archived_count'] = 'archived_count'
      @_hash['pricing_scheme'] = 'pricing_scheme'
      @_hash['tier_count'] = 'tier_count'
      @_hash['entry_price'] = 'entry_price'
      @_hash['final_price'] = 'final_price'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        archived_count
        pricing_scheme
        tier_count
        entry_price
        final_price
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        pricing_scheme
        entry_price
        final_price
      ]
    end

    def initialize(archived_count: SKIP, pricing_scheme: SKIP, tier_count: SKIP,
                   entry_price: SKIP, final_price: SKIP,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @archived_count = archived_count unless archived_count == SKIP
      @pricing_scheme = pricing_scheme unless pricing_scheme == SKIP
      @tier_count = tier_count unless tier_count == SKIP
      @entry_price = entry_price unless entry_price == SKIP
      @final_price = final_price unless final_price == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      archived_count =
        hash.key?('archived_count') ? hash['archived_count'] : SKIP
      pricing_scheme =
        hash.key?('pricing_scheme') ? hash['pricing_scheme'] : SKIP
      tier_count = hash.key?('tier_count') ? hash['tier_count'] : SKIP
      entry_price = hash.key?('entry_price') ? hash['entry_price'] : SKIP
      final_price = hash.key?('final_price') ? hash['final_price'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      WalletProductPricePointSummary.new(archived_count: archived_count,
                                         pricing_scheme: pricing_scheme,
                                         tier_count: tier_count,
                                         entry_price: entry_price,
                                         final_price: final_price,
                                         additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} archived_count: #{@archived_count}, pricing_scheme: #{@pricing_scheme},"\
      " tier_count: #{@tier_count}, entry_price: #{@entry_price}, final_price: #{@final_price},"\
      " additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} archived_count: #{@archived_count.inspect}, pricing_scheme:"\
      " #{@pricing_scheme.inspect}, tier_count: #{@tier_count.inspect}, entry_price:"\
      " #{@entry_price.inspect}, final_price: #{@final_price.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
