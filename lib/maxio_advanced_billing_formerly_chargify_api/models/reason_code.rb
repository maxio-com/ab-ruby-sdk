# maxio_advanced_billing_formerly_chargify_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MaxioAdvancedBillingFormerlyChargifyApi
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
    # @return [String]
    attr_accessor :created_at

    # TODO: Write general description for this method
    # @return [String]
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

    def initialize(id = SKIP,
                   site_id = SKIP,
                   code = SKIP,
                   description = SKIP,
                   position = SKIP,
                   created_at = SKIP,
                   updated_at = SKIP)
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
      created_at = hash.key?('created_at') ? hash['created_at'] : SKIP
      updated_at = hash.key?('updated_at') ? hash['updated_at'] : SKIP

      # Create object from extracted values.
      ReasonCode.new(id,
                     site_id,
                     code,
                     description,
                     position,
                     created_at,
                     updated_at)
    end
  end
end
