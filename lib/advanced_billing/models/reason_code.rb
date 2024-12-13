# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module AdvancedBilling
  # ReasonCode Model.
  class ReasonCode < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :id

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :site_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :code

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :description

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :position

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :created_at

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :updated_at

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['site_id'] = 'site_id'
      @_hash['code'] = 'code'
      @_hash['description'] = 'description'
      @_hash['position'] = 'position'
      @_hash['created_at'] = 'created_at'
      @_hash['updated_at'] = 'updated_at'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        site_id
        code
        description
        position
        created_at
        updated_at
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(id: SKIP, site_id: SKIP, code: SKIP, description: SKIP,
                   position: SKIP, created_at: SKIP, updated_at: SKIP,
                   additional_properties : {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @id = id unless id == SKIP
      @site_id = site_id unless site_id == SKIP
      @code = code unless code == SKIP
      @description = description unless description == SKIP
      @position = position unless position == SKIP
      @created_at = created_at unless created_at == SKIP
      @updated_at = updated_at unless updated_at == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      site_id = hash.key?('site_id') ? hash['site_id'] : SKIP
      code = hash.key?('code') ? hash['code'] : SKIP
      description = hash.key?('description') ? hash['description'] : SKIP
      position = hash.key?('position') ? hash['position'] : SKIP
      created_at = if hash.key?('created_at')
                     (DateTimeHelper.from_rfc3339(hash['created_at']) if hash['created_at'])
                   else
                     SKIP
                   end
      updated_at = if hash.key?('updated_at')
                     (DateTimeHelper.from_rfc3339(hash['updated_at']) if hash['updated_at'])
                   else
                     SKIP
                   end

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      ReasonCode.new(id: id,
                     site_id: site_id,
                     code: code,
                     description: description,
                     position: position,
                     created_at: created_at,
                     updated_at: updated_at,
                     additional_properties: additional_properties)
    end

    def to_custom_created_at
      DateTimeHelper.to_rfc3339(created_at)
    end

    def to_custom_updated_at
      DateTimeHelper.to_rfc3339(updated_at)
    end
  end
end
