# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # SaleRep Model.
  class SaleRep < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :full_name

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :subscriptions_count

    # TODO: Write general description for this method
    # @return [TrueClass | FalseClass]
    attr_accessor :test_mode

    # TODO: Write general description for this method
    # @return [Array[SaleRepSubscription]]
    attr_accessor :subscriptions

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['full_name'] = 'full_name'
      @_hash['subscriptions_count'] = 'subscriptions_count'
      @_hash['test_mode'] = 'test_mode'
      @_hash['subscriptions'] = 'subscriptions'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        full_name
        subscriptions_count
        test_mode
        subscriptions
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(id = SKIP,
                   full_name = SKIP,
                   subscriptions_count = SKIP,
                   test_mode = SKIP,
                   subscriptions = SKIP,
                   additional_properties = {})
      @id = id unless id == SKIP
      @full_name = full_name unless full_name == SKIP
      @subscriptions_count = subscriptions_count unless subscriptions_count == SKIP
      @test_mode = test_mode unless test_mode == SKIP
      @subscriptions = subscriptions unless subscriptions == SKIP

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      full_name = hash.key?('full_name') ? hash['full_name'] : SKIP
      subscriptions_count =
        hash.key?('subscriptions_count') ? hash['subscriptions_count'] : SKIP
      test_mode = hash.key?('test_mode') ? hash['test_mode'] : SKIP
      # Parameter is an array, so we need to iterate through it
      subscriptions = nil
      unless hash['subscriptions'].nil?
        subscriptions = []
        hash['subscriptions'].each do |structure|
          subscriptions << (SaleRepSubscription.from_hash(structure) if structure)
        end
      end

      subscriptions = SKIP unless hash.key?('subscriptions')

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      SaleRep.new(id,
                  full_name,
                  subscriptions_count,
                  test_mode,
                  subscriptions,
                  hash)
    end
  end
end
