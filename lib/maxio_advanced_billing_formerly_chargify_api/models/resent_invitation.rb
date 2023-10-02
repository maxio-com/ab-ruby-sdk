# maxio_advanced_billing_formerly_chargify_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MaxioAdvancedBillingFormerlyChargifyApi
  # ResentInvitation Model.
  class ResentInvitation < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :last_sent_at

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :last_accepted_at

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :send_invite_link_text

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :uninvited_count

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['last_sent_at'] = 'last_sent_at'
      @_hash['last_accepted_at'] = 'last_accepted_at'
      @_hash['send_invite_link_text'] = 'send_invite_link_text'
      @_hash['uninvited_count'] = 'uninvited_count'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        last_sent_at
        last_accepted_at
        send_invite_link_text
        uninvited_count
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(last_sent_at = SKIP,
                   last_accepted_at = SKIP,
                   send_invite_link_text = SKIP,
                   uninvited_count = SKIP)
      @last_sent_at = last_sent_at unless last_sent_at == SKIP
      @last_accepted_at = last_accepted_at unless last_accepted_at == SKIP
      @send_invite_link_text = send_invite_link_text unless send_invite_link_text == SKIP
      @uninvited_count = uninvited_count unless uninvited_count == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      last_sent_at = hash.key?('last_sent_at') ? hash['last_sent_at'] : SKIP
      last_accepted_at =
        hash.key?('last_accepted_at') ? hash['last_accepted_at'] : SKIP
      send_invite_link_text =
        hash.key?('send_invite_link_text') ? hash['send_invite_link_text'] : SKIP
      uninvited_count =
        hash.key?('uninvited_count') ? hash['uninvited_count'] : SKIP

      # Create object from extracted values.
      ResentInvitation.new(last_sent_at,
                           last_accepted_at,
                           send_invite_link_text,
                           uninvited_count)
    end
  end
end
