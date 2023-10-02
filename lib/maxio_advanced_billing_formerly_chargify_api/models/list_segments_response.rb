# maxio_advanced_billing_formerly_chargify_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MaxioAdvancedBillingFormerlyChargifyApi
  # ListSegmentsResponse Model.
  class ListSegmentsResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Array[Segment]]
    attr_accessor :segments

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['segments'] = 'segments'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        segments
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(segments = SKIP)
      @segments = segments unless segments == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      segments = nil
      unless hash['segments'].nil?
        segments = []
        hash['segments'].each do |structure|
          segments << (Segment.from_hash(structure) if structure)
        end
      end

      segments = SKIP unless hash.key?('segments')

      # Create object from extracted values.
      ListSegmentsResponse.new(segments)
    end
  end
end
