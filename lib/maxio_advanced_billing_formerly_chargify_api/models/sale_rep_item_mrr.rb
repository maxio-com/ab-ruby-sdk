# maxio_advanced_billing_formerly_chargify_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MaxioAdvancedBillingFormerlyChargifyApi
  # SaleRepItemMrr Model.
  class SaleRepItemMrr < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :mrr

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :usage

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :recurring

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['mrr'] = 'mrr'
      @_hash['usage'] = 'usage'
      @_hash['recurring'] = 'recurring'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        mrr
        usage
        recurring
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(mrr = SKIP,
                   usage = SKIP,
                   recurring = SKIP)
      @mrr = mrr unless mrr == SKIP
      @usage = usage unless usage == SKIP
      @recurring = recurring unless recurring == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      mrr = hash.key?('mrr') ? hash['mrr'] : SKIP
      usage = hash.key?('usage') ? hash['usage'] : SKIP
      recurring = hash.key?('recurring') ? hash['recurring'] : SKIP

      # Create object from extracted values.
      SaleRepItemMrr.new(mrr,
                         usage,
                         recurring)
    end
  end
end
