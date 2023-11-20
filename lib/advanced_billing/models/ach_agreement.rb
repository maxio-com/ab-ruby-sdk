# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # (Optional) If passed, the proof of the authorized ACH agreement terms will
  # be persisted.
  class ACHAgreement < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # (Required when providing ACH agreement params) The ACH authorization
    # agreement terms.
    # @return [String]
    attr_accessor :agreement_terms

    # (Required when providing ACH agreement params) The first name of the
    # person authorizing the ACH agreement.
    # @return [String]
    attr_accessor :authorizer_first_name

    # (Required when providing ACH agreement params) The last name of the person
    # authorizing the ACH agreement.
    # @return [String]
    attr_accessor :authorizer_last_name

    # (Required when providing ACH agreement params) The IP address of the
    # person authorizing the ACH agreement.
    # @return [String]
    attr_accessor :ip_address

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['agreement_terms'] = 'agreement_terms'
      @_hash['authorizer_first_name'] = 'authorizer_first_name'
      @_hash['authorizer_last_name'] = 'authorizer_last_name'
      @_hash['ip_address'] = 'ip_address'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        agreement_terms
        authorizer_first_name
        authorizer_last_name
        ip_address
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(agreement_terms = SKIP,
                   authorizer_first_name = SKIP,
                   authorizer_last_name = SKIP,
                   ip_address = SKIP)
      @agreement_terms = agreement_terms unless agreement_terms == SKIP
      @authorizer_first_name = authorizer_first_name unless authorizer_first_name == SKIP
      @authorizer_last_name = authorizer_last_name unless authorizer_last_name == SKIP
      @ip_address = ip_address unless ip_address == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      agreement_terms =
        hash.key?('agreement_terms') ? hash['agreement_terms'] : SKIP
      authorizer_first_name =
        hash.key?('authorizer_first_name') ? hash['authorizer_first_name'] : SKIP
      authorizer_last_name =
        hash.key?('authorizer_last_name') ? hash['authorizer_last_name'] : SKIP
      ip_address = hash.key?('ip_address') ? hash['ip_address'] : SKIP

      # Create object from extracted values.
      ACHAgreement.new(agreement_terms,
                       authorizer_first_name,
                       authorizer_last_name,
                       ip_address)
    end
  end
end
