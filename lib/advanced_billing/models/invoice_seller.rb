# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Information about the seller (merchant) listed on the masthead of the
  # invoice.
  class InvoiceSeller < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :name

    # TODO: Write general description for this method
    # @return [InvoiceAddress]
    attr_accessor :address

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :phone

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :logo_url

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['address'] = 'address'
      @_hash['phone'] = 'phone'
      @_hash['logo_url'] = 'logo_url'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        name
        address
        phone
        logo_url
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        logo_url
      ]
    end

    def initialize(name: SKIP, address: SKIP, phone: SKIP, logo_url: SKIP,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @name = name unless name == SKIP
      @address = address unless address == SKIP
      @phone = phone unless phone == SKIP
      @logo_url = logo_url unless logo_url == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash.key?('name') ? hash['name'] : SKIP
      address = InvoiceAddress.from_hash(hash['address']) if hash['address']
      phone = hash.key?('phone') ? hash['phone'] : SKIP
      logo_url = hash.key?('logo_url') ? hash['logo_url'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      InvoiceSeller.new(name: name,
                        address: address,
                        phone: phone,
                        logo_url: logo_url,
                        additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [InvoiceSeller | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} name: #{@name}, address: #{@address}, phone: #{@phone}, logo_url:"\
      " #{@logo_url}, additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} name: #{@name.inspect}, address: #{@address.inspect}, phone:"\
      " #{@phone.inspect}, logo_url: #{@logo_url.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
