# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module AdvancedBilling
  # TooManyManagementLinkRequests Model.
  class TooManyManagementLinkRequests < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :error

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :new_link_available_at

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['error'] = 'error'
      @_hash['new_link_available_at'] = 'new_link_available_at'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        error
        new_link_available_at
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(error = SKIP,
                   new_link_available_at = SKIP)
      @error = error unless error == SKIP
      @new_link_available_at = new_link_available_at unless new_link_available_at == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      error = hash.key?('error') ? hash['error'] : SKIP
      new_link_available_at = if hash.key?('new_link_available_at')
                                (DateTimeHelper.from_rfc3339(hash['new_link_available_at']) if hash['new_link_available_at'])
                              else
                                SKIP
                              end

      # Create object from extracted values.
      TooManyManagementLinkRequests.new(error,
                                        new_link_available_at)
    end

    def to_new_link_available_at
      DateTimeHelper.to_rfc3339(new_link_available_at)
    end
  end
end
