# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module AdvancedBilling
  # InvoiceAvataxDetails Model.
  class InvoiceAvataxDetails < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :status

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :document_code

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :commit_date

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :modify_date

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['status'] = 'status'
      @_hash['document_code'] = 'document_code'
      @_hash['commit_date'] = 'commit_date'
      @_hash['modify_date'] = 'modify_date'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        status
        document_code
        commit_date
        modify_date
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        id
        status
        document_code
        commit_date
        modify_date
      ]
    end

    def initialize(id: SKIP, status: SKIP, document_code: SKIP,
                   commit_date: SKIP, modify_date: SKIP,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @id = id unless id == SKIP
      @status = status unless status == SKIP
      @document_code = document_code unless document_code == SKIP
      @commit_date = commit_date unless commit_date == SKIP
      @modify_date = modify_date unless modify_date == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      status = hash.key?('status') ? hash['status'] : SKIP
      document_code = hash.key?('document_code') ? hash['document_code'] : SKIP
      commit_date = if hash.key?('commit_date')
                      (DateTimeHelper.from_rfc3339(hash['commit_date']) if hash['commit_date'])
                    else
                      SKIP
                    end
      modify_date = if hash.key?('modify_date')
                      (DateTimeHelper.from_rfc3339(hash['modify_date']) if hash['modify_date'])
                    else
                      SKIP
                    end

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      InvoiceAvataxDetails.new(id: id,
                               status: status,
                               document_code: document_code,
                               commit_date: commit_date,
                               modify_date: modify_date,
                               additional_properties: additional_properties)
    end

    def to_custom_commit_date
      DateTimeHelper.to_rfc3339(commit_date)
    end

    def to_custom_modify_date
      DateTimeHelper.to_rfc3339(modify_date)
    end

    # Validates an instance of the object from a given value.
    # @param [InvoiceAvataxDetails | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end
  end
end