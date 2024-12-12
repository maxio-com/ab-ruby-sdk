# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # SaleRepSubscription Model.
  class SaleRepSubscription < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :site_name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :subscription_url

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :customer_name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :created_at

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :mrr

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :usage

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :recurring

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :last_payment

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :churn_date

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['site_name'] = 'site_name'
      @_hash['subscription_url'] = 'subscription_url'
      @_hash['customer_name'] = 'customer_name'
      @_hash['created_at'] = 'created_at'
      @_hash['mrr'] = 'mrr'
      @_hash['usage'] = 'usage'
      @_hash['recurring'] = 'recurring'
      @_hash['last_payment'] = 'last_payment'
      @_hash['churn_date'] = 'churn_date'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        site_name
        subscription_url
        customer_name
        created_at
        mrr
        usage
        recurring
        last_payment
        churn_date
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        churn_date
      ]
    end

    def initialize(id: SKIP, site_name: SKIP, subscription_url: SKIP,
                   customer_name: SKIP, created_at: SKIP, mrr: SKIP,
                   usage: SKIP, recurring: SKIP, last_payment: SKIP,
                   churn_date: SKIP, additional_properties = nil)
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @id = id unless id == SKIP
      @site_name = site_name unless site_name == SKIP
      @subscription_url = subscription_url unless subscription_url == SKIP
      @customer_name = customer_name unless customer_name == SKIP
      @created_at = created_at unless created_at == SKIP
      @mrr = mrr unless mrr == SKIP
      @usage = usage unless usage == SKIP
      @recurring = recurring unless recurring == SKIP
      @last_payment = last_payment unless last_payment == SKIP
      @churn_date = churn_date unless churn_date == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      site_name = hash.key?('site_name') ? hash['site_name'] : SKIP
      subscription_url =
        hash.key?('subscription_url') ? hash['subscription_url'] : SKIP
      customer_name = hash.key?('customer_name') ? hash['customer_name'] : SKIP
      created_at = hash.key?('created_at') ? hash['created_at'] : SKIP
      mrr = hash.key?('mrr') ? hash['mrr'] : SKIP
      usage = hash.key?('usage') ? hash['usage'] : SKIP
      recurring = hash.key?('recurring') ? hash['recurring'] : SKIP
      last_payment = hash.key?('last_payment') ? hash['last_payment'] : SKIP
      churn_date = hash.key?('churn_date') ? hash['churn_date'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      SaleRepSubscription.new(id: id,
                              site_name: site_name,
                              subscription_url: subscription_url,
                              customer_name: customer_name,
                              created_at: created_at,
                              mrr: mrr,
                              usage: usage,
                              recurring: recurring,
                              last_payment: last_payment,
                              churn_date: churn_date,
                              additional_properties: additional_properties)
    end
  end
end
