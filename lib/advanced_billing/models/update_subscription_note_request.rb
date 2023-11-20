# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # Updatable fields for Subscription Note
  class UpdateSubscriptionNoteRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Updatable fields for Subscription Note
    # @return [UpdateSubscriptionNote]
    attr_accessor :note

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['note'] = 'note'
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

    def initialize(note = nil)
      @note = note
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      note = UpdateSubscriptionNote.from_hash(hash['note']) if hash['note']

      # Create object from extracted values.
      UpdateSubscriptionNoteRequest.new(note)
    end
  end
end
