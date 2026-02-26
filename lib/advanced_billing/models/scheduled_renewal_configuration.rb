# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

require 'date'
module AdvancedBilling
  # ScheduledRenewalConfiguration Model.
  class ScheduledRenewalConfiguration < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # ID of the renewal.
    # @return [Integer]
    attr_accessor :id

    # ID of the site to which the renewal belongs.
    # @return [Integer]
    attr_accessor :site_id

    # The id of the subscription.
    # @return [Integer]
    attr_accessor :subscription_id

    # The id of the subscription.
    # @return [DateTime]
    attr_accessor :starts_at

    # The id of the subscription.
    # @return [DateTime]
    attr_accessor :ends_at

    # The id of the subscription.
    # @return [DateTime]
    attr_accessor :lock_in_at

    # The id of the subscription.
    # @return [DateTime]
    attr_accessor :created_at

    # The id of the subscription.
    # @return [String]
    attr_accessor :status

    # The id of the subscription.
    # @return [Array[ScheduledRenewalConfigurationItem]]
    attr_accessor :scheduled_renewal_configuration_items

    # Contract linked to the scheduled renewal configuration.
    # @return [Contract]
    attr_accessor :contract

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['site_id'] = 'site_id'
      @_hash['subscription_id'] = 'subscription_id'
      @_hash['starts_at'] = 'starts_at'
      @_hash['ends_at'] = 'ends_at'
      @_hash['lock_in_at'] = 'lock_in_at'
      @_hash['created_at'] = 'created_at'
      @_hash['status'] = 'status'
      @_hash['scheduled_renewal_configuration_items'] =
        'scheduled_renewal_configuration_items'
      @_hash['contract'] = 'contract'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        site_id
        subscription_id
        starts_at
        ends_at
        lock_in_at
        created_at
        status
        scheduled_renewal_configuration_items
        contract
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(id: SKIP, site_id: SKIP, subscription_id: SKIP,
                   starts_at: SKIP, ends_at: SKIP, lock_in_at: SKIP,
                   created_at: SKIP, status: SKIP,
                   scheduled_renewal_configuration_items: SKIP, contract: SKIP,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @id = id unless id == SKIP
      @site_id = site_id unless site_id == SKIP
      @subscription_id = subscription_id unless subscription_id == SKIP
      @starts_at = starts_at unless starts_at == SKIP
      @ends_at = ends_at unless ends_at == SKIP
      @lock_in_at = lock_in_at unless lock_in_at == SKIP
      @created_at = created_at unless created_at == SKIP
      @status = status unless status == SKIP
      unless scheduled_renewal_configuration_items == SKIP
        @scheduled_renewal_configuration_items =
          scheduled_renewal_configuration_items
      end
      @contract = contract unless contract == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      site_id = hash.key?('site_id') ? hash['site_id'] : SKIP
      subscription_id =
        hash.key?('subscription_id') ? hash['subscription_id'] : SKIP
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
      created_at = if hash.key?('created_at')
                     (DateTimeHelper.from_rfc3339(hash['created_at']) if hash['created_at'])
                   else
                     SKIP
                   end
      status = hash.key?('status') ? hash['status'] : SKIP
      # Parameter is an array, so we need to iterate through it
      scheduled_renewal_configuration_items = nil
      unless hash['scheduled_renewal_configuration_items'].nil?
        scheduled_renewal_configuration_items = []
        hash['scheduled_renewal_configuration_items'].each do |structure|
          scheduled_renewal_configuration_items << (ScheduledRenewalConfigurationItem.from_hash(structure) if structure)
        end
      end

      scheduled_renewal_configuration_items = SKIP unless hash.key?('scheduled_renewal_configuration_items')
      contract = Contract.from_hash(hash['contract']) if hash['contract']

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      ScheduledRenewalConfiguration.new(id: id,
                                        site_id: site_id,
                                        subscription_id: subscription_id,
                                        starts_at: starts_at,
                                        ends_at: ends_at,
                                        lock_in_at: lock_in_at,
                                        created_at: created_at,
                                        status: status,
                                        scheduled_renewal_configuration_items: scheduled_renewal_configuration_items,
                                        contract: contract,
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

    def to_custom_created_at
      DateTimeHelper.to_rfc3339(created_at)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id}, site_id: #{@site_id}, subscription_id: #{@subscription_id},"\
      " starts_at: #{@starts_at}, ends_at: #{@ends_at}, lock_in_at: #{@lock_in_at}, created_at:"\
      " #{@created_at}, status: #{@status}, scheduled_renewal_configuration_items:"\
      " #{@scheduled_renewal_configuration_items}, contract: #{@contract}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id.inspect}, site_id: #{@site_id.inspect}, subscription_id:"\
      " #{@subscription_id.inspect}, starts_at: #{@starts_at.inspect}, ends_at:"\
      " #{@ends_at.inspect}, lock_in_at: #{@lock_in_at.inspect}, created_at:"\
      " #{@created_at.inspect}, status: #{@status.inspect}, scheduled_renewal_configuration_items:"\
      " #{@scheduled_renewal_configuration_items.inspect}, contract: #{@contract.inspect},"\
      " additional_properties: #{get_additional_properties}>"
    end
  end
end
