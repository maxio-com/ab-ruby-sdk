# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module AdvancedBilling
  # Metadata Model.
  class Metadata < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :value

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :resource_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :name

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :deleted_at

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :metafield_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['value'] = 'value'
      @_hash['resource_id'] = 'resource_id'
      @_hash['name'] = 'name'
      @_hash['deleted_at'] = 'deleted_at'
      @_hash['metafield_id'] = 'metafield_id'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        value
        resource_id
        name
        deleted_at
        metafield_id
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        id
        value
        resource_id
        deleted_at
        metafield_id
      ]
    end

    def initialize(id = SKIP,
                   value = SKIP,
                   resource_id = SKIP,
                   name = SKIP,
                   deleted_at = SKIP,
                   metafield_id = SKIP)
      @id = id unless id == SKIP
      @value = value unless value == SKIP
      @resource_id = resource_id unless resource_id == SKIP
      @name = name unless name == SKIP
      @deleted_at = deleted_at unless deleted_at == SKIP
      @metafield_id = metafield_id unless metafield_id == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      value = hash.key?('value') ? hash['value'] : SKIP
      resource_id = hash.key?('resource_id') ? hash['resource_id'] : SKIP
      name = hash.key?('name') ? hash['name'] : SKIP
      deleted_at = if hash.key?('deleted_at')
                     (DateTimeHelper.from_rfc3339(hash['deleted_at']) if hash['deleted_at'])
                   else
                     SKIP
                   end
      metafield_id = hash.key?('metafield_id') ? hash['metafield_id'] : SKIP

      # Create object from extracted values.
      Metadata.new(id,
                   value,
                   resource_id,
                   name,
                   deleted_at,
                   metafield_id)
    end

    def to_custom_deleted_at
      DateTimeHelper.to_rfc3339(deleted_at)
    end
  end
end
