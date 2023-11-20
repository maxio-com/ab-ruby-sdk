# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # AllocationPreviewResponse Model.
  class AllocationPreviewResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [AllocationPreview]
    attr_accessor :allocation_preview

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['allocation_preview'] = 'allocation_preview'
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

    def initialize(allocation_preview = nil)
      @allocation_preview = allocation_preview
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      allocation_preview = AllocationPreview.from_hash(hash['allocation_preview']) if
        hash['allocation_preview']

      # Create object from extracted values.
      AllocationPreviewResponse.new(allocation_preview)
    end
  end
end
