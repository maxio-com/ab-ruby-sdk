# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # PublicSignupPage Model.
  class PublicSignupPage < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The id of the signup page (public_signup_pages only)
    # @return [Integer]
    attr_accessor :id

    # The url to which a customer will be returned after a successful signup
    # (public_signup_pages only)
    # @return [String]
    attr_accessor :return_url

    # The params to be appended to the return_url (public_signup_pages only)
    # @return [String]
    attr_accessor :return_params

    # The url where the signup page can be viewed (public_signup_pages only)
    # @return [String]
    attr_accessor :url

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['return_url'] = 'return_url'
      @_hash['return_params'] = 'return_params'
      @_hash['url'] = 'url'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        return_url
        return_params
        url
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        return_url
        return_params
      ]
    end

    def initialize(id: SKIP, return_url: SKIP, return_params: SKIP, url: SKIP,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @id = id unless id == SKIP
      @return_url = return_url unless return_url == SKIP
      @return_params = return_params unless return_params == SKIP
      @url = url unless url == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      return_url = hash.key?('return_url') ? hash['return_url'] : SKIP
      return_params = hash.key?('return_params') ? hash['return_params'] : SKIP
      url = hash.key?('url') ? hash['url'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      PublicSignupPage.new(id: id,
                           return_url: return_url,
                           return_params: return_params,
                           url: url,
                           additional_properties: additional_properties)
    end
  end
end
