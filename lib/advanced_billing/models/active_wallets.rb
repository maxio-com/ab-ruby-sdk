# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # ActiveWallets Model.
  class ActiveWallets < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Total count of active wallets drawing on this product.
    # @return [Integer]
    attr_accessor :total

    # Up to 50 of the most recently created active wallets, newest first.
    # @return [Array[WalletProductActiveWallet]]
    attr_accessor :sample

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['total'] = 'total'
      @_hash['sample'] = 'sample'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      []
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(total:, sample:, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @total = total
      @sample = sample
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      total = hash.key?('total') ? hash['total'] : nil
      # Parameter is an array, so we need to iterate through it
      sample = nil
      unless hash['sample'].nil?
        sample = []
        hash['sample'].each do |structure|
          sample << (WalletProductActiveWallet.from_hash(structure) if structure)
        end
      end

      sample = nil unless hash.key?('sample')

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      ActiveWallets.new(total: total,
                        sample: sample,
                        additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} total: #{@total}, sample: #{@sample}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} total: #{@total.inspect}, sample: #{@sample.inspect},"\
      " additional_properties: #{get_additional_properties}>"
    end
  end
end
