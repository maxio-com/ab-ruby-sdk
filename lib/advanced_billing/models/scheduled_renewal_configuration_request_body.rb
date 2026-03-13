# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

require 'date'
module AdvancedBilling
  # ScheduledRenewalConfigurationRequestBody Model.
  class ScheduledRenewalConfigurationRequestBody < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # (Optional) Start of the renewal term.
    # @return [DateTime]
    attr_accessor :starts_at

    # (Optional) End of the renewal term.
    # @return [DateTime]
    attr_accessor :ends_at

    # (Optional) Lock-in date for the renewal.
    # @return [DateTime]
    attr_accessor :lock_in_at

    # (Optional) Existing contract to associate with the scheduled renewal.
    # Contracts must be enabled for your site.
    # @return [Integer]
    attr_accessor :contract_id

    # (Optional) Set to true to create a new contract when contracts are
    # enabled. Contracts must be enabled for your site.
    # @return [TrueClass | FalseClass]
    attr_accessor :create_new_contract

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['starts_at'] = 'starts_at'
      @_hash['ends_at'] = 'ends_at'
      @_hash['lock_in_at'] = 'lock_in_at'
      @_hash['contract_id'] = 'contract_id'
      @_hash['create_new_contract'] = 'create_new_contract'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        starts_at
        ends_at
        lock_in_at
        contract_id
        create_new_contract
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(starts_at: SKIP, ends_at: SKIP, lock_in_at: SKIP,
                   contract_id: SKIP, create_new_contract: SKIP,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @starts_at = starts_at unless starts_at == SKIP
      @ends_at = ends_at unless ends_at == SKIP
      @lock_in_at = lock_in_at unless lock_in_at == SKIP
      @contract_id = contract_id unless contract_id == SKIP
      @create_new_contract = create_new_contract unless create_new_contract == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      starts_at = if hash.key?('starts_at')
                    (DateTimeHelper.from_rfc3339(hash['starts_at']) if hash['starts_at'])
                  else
                    SKIP
                  end
      ends_at = if hash.key?('ends_at')
                  (DateTimeHelper.from_rfc3339(hash['ends_at']) if hash['ends_at'])
                else
                  SKIP
                end
      lock_in_at = if hash.key?('lock_in_at')
                     (DateTimeHelper.from_rfc3339(hash['lock_in_at']) if hash['lock_in_at'])
                   else
                     SKIP
                   end
      contract_id = hash.key?('contract_id') ? hash['contract_id'] : SKIP
      create_new_contract =
        hash.key?('create_new_contract') ? hash['create_new_contract'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      ScheduledRenewalConfigurationRequestBody.new(starts_at: starts_at,
                                                   ends_at: ends_at,
                                                   lock_in_at: lock_in_at,
                                                   contract_id: contract_id,
                                                   create_new_contract: create_new_contract,
                                                   additional_properties: additional_properties)
    end

    def to_custom_starts_at
      DateTimeHelper.to_rfc3339(starts_at)
    end

    def to_custom_ends_at
      DateTimeHelper.to_rfc3339(ends_at)
    end

    def to_custom_lock_in_at
      DateTimeHelper.to_rfc3339(lock_in_at)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} starts_at: #{@starts_at}, ends_at: #{@ends_at}, lock_in_at: #{@lock_in_at},"\
      " contract_id: #{@contract_id}, create_new_contract: #{@create_new_contract},"\
      " additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} starts_at: #{@starts_at.inspect}, ends_at: #{@ends_at.inspect}, lock_in_at:"\
      " #{@lock_in_at.inspect}, contract_id: #{@contract_id.inspect}, create_new_contract:"\
      " #{@create_new_contract.inspect}, additional_properties: #{get_additional_properties}>"
    end
  end
end
