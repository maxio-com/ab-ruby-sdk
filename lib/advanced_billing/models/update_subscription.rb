# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

require 'date'
module AdvancedBilling
  # UpdateSubscription Model.
  class UpdateSubscription < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [CreditCardAttributes]
    attr_accessor :credit_card_attributes

    # Set to the handle of a different product to change the subscription's
    # product
    # @return [String]
    attr_accessor :product_handle

    # Set to the id of a different product to change the subscription's product
    # @return [Integer]
    attr_accessor :product_id

    # Set to the id of a different product to change the subscription's product
    # @return [TrueClass | FalseClass]
    attr_accessor :product_change_delayed

    # Set to an empty string to cancel a delayed product change.
    # @return [String]
    attr_accessor :next_product_id

    # Set to an empty string to cancel a delayed product change.
    # @return [String]
    attr_accessor :next_product_price_point_id

    # Use for subscriptions with product eligible for calendar billing only.
    # Value can be 1-28 or 'end'.
    # @return [Object]
    attr_accessor :snap_day

    # (Optional) Set this attribute to a future date/time to update a
    # subscription in the Awaiting Signup Date state, to Awaiting Signup. In the
    # Awaiting Signup state, a subscription behaves like any other. It can be
    # canceled, allocated to, or have its billing date changed. etc. When the
    # `initial_billing_at` date hits, the subscription will transition to the
    # expected state. If the product has a trial, the subscription will enter a
    # trial, otherwise it will go active. Setup fees will be respected either
    # before or after the trial, as configured on the price point. If the
    # payment is due at the initial_billing_at and it fails the subscription
    # will be immediately canceled. You can omit the initial_billing_at date to
    # activate the subscription immediately. See the [subscription
    # import](https://maxio.zendesk.com/hc/en-us/articles/24251489107213-Advance
    # d-Billing-Subscription-Imports#date-format) documentation for more
    # information about Date/Time formats.
    # @return [DateTime]
    attr_accessor :initial_billing_at

    # (Optional) Set this attribute to true to move the subscription from
    # Awaiting Signup, to Awaiting Signup Date. Use this when you want to update
    # a subscription that has an unknown initial billing date. When the first
    # billing date is known, update a subscription to set the
    # `initial_billing_at` date. The subscription moves to the awaiting signup
    # with a scheduled initial billing date. You can omit the initial_billing_at
    # date to activate the subscription immediately. See [Subscription
    # States](https://maxio-chargify.zendesk.com/hc/en-us/articles/5404222005773
    # -Subscription-States) for more information.
    # @return [TrueClass | FalseClass]
    attr_accessor :defer_signup

    # (Optional) Set this attribute to true to move the subscription from
    # Awaiting Signup, to Awaiting Signup Date. Use this when you want to update
    # a subscription that has an unknown initial billing date. When the first
    # billing date is known, update a subscription to set the
    # `initial_billing_at` date. The subscription moves to the awaiting signup
    # with a scheduled initial billing date. You can omit the initial_billing_at
    # date to activate the subscription immediately. See [Subscription
    # States](https://maxio-chargify.zendesk.com/hc/en-us/articles/5404222005773
    # -Subscription-States) for more information.
    # @return [DateTime]
    attr_accessor :next_billing_at

    # Timestamp giving the expiration date of this subscription (if any). You
    # may manually change the expiration date at any point during a subscription
    # period.
    # @return [DateTime]
    attr_accessor :expires_at

    # Timestamp giving the expiration date of this subscription (if any). You
    # may manually change the expiration date at any point during a subscription
    # period.
    # @return [String]
    attr_accessor :payment_collection_method

    # Timestamp giving the expiration date of this subscription (if any). You
    # may manually change the expiration date at any point during a subscription
    # period.
    # @return [TrueClass | FalseClass]
    attr_accessor :receives_invoice_emails

    # Timestamp giving the expiration date of this subscription (if any). You
    # may manually change the expiration date at any point during a subscription
    # period.
    # @return [Object]
    attr_accessor :net_terms

    # Timestamp giving the expiration date of this subscription (if any). You
    # may manually change the expiration date at any point during a subscription
    # period.
    # @return [Integer]
    attr_accessor :stored_credential_transaction_id

    # Timestamp giving the expiration date of this subscription (if any). You
    # may manually change the expiration date at any point during a subscription
    # period.
    # @return [String]
    attr_accessor :reference

    # (Optional) Used in place of `product_price_point_id` to define a custom
    # price point unique to the subscription
    # @return [SubscriptionCustomPrice]
    attr_accessor :custom_price

    # (Optional) An array of component ids and custom prices to be added to the
    # subscription.
    # @return [Array[UpdateSubscriptionComponent]]
    attr_accessor :components

    # Enable Communication Delay feature, making sure no communication (email or
    # SMS) is sent to the Customer between 9PM and 8AM in time zone set by the
    # `dunning_communication_delay_time_zone` attribute.
    # @return [TrueClass | FalseClass]
    attr_accessor :dunning_communication_delay_enabled

    # Time zone for the Dunning Communication Delay feature.
    # @return [String]
    attr_accessor :dunning_communication_delay_time_zone

    # Set to change the current product's price point.
    # @return [Integer]
    attr_accessor :product_price_point_id

    # Set to change the current product's price point.
    # @return [String]
    attr_accessor :product_price_point_handle

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['credit_card_attributes'] = 'credit_card_attributes'
      @_hash['product_handle'] = 'product_handle'
      @_hash['product_id'] = 'product_id'
      @_hash['product_change_delayed'] = 'product_change_delayed'
      @_hash['next_product_id'] = 'next_product_id'
      @_hash['next_product_price_point_id'] = 'next_product_price_point_id'
      @_hash['snap_day'] = 'snap_day'
      @_hash['initial_billing_at'] = 'initial_billing_at'
      @_hash['defer_signup'] = 'defer_signup'
      @_hash['next_billing_at'] = 'next_billing_at'
      @_hash['expires_at'] = 'expires_at'
      @_hash['payment_collection_method'] = 'payment_collection_method'
      @_hash['receives_invoice_emails'] = 'receives_invoice_emails'
      @_hash['net_terms'] = 'net_terms'
      @_hash['stored_credential_transaction_id'] =
        'stored_credential_transaction_id'
      @_hash['reference'] = 'reference'
      @_hash['custom_price'] = 'custom_price'
      @_hash['components'] = 'components'
      @_hash['dunning_communication_delay_enabled'] =
        'dunning_communication_delay_enabled'
      @_hash['dunning_communication_delay_time_zone'] =
        'dunning_communication_delay_time_zone'
      @_hash['product_price_point_id'] = 'product_price_point_id'
      @_hash['product_price_point_handle'] = 'product_price_point_handle'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        credit_card_attributes
        product_handle
        product_id
        product_change_delayed
        next_product_id
        next_product_price_point_id
        snap_day
        initial_billing_at
        defer_signup
        next_billing_at
        expires_at
        payment_collection_method
        receives_invoice_emails
        net_terms
        stored_credential_transaction_id
        reference
        custom_price
        components
        dunning_communication_delay_enabled
        dunning_communication_delay_time_zone
        product_price_point_id
        product_price_point_handle
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        dunning_communication_delay_time_zone
      ]
    end

    def initialize(credit_card_attributes: SKIP, product_handle: SKIP,
                   product_id: SKIP, product_change_delayed: SKIP,
                   next_product_id: SKIP, next_product_price_point_id: SKIP,
                   snap_day: SKIP, initial_billing_at: SKIP,
                   defer_signup: false, next_billing_at: SKIP, expires_at: SKIP,
                   payment_collection_method: SKIP,
                   receives_invoice_emails: SKIP, net_terms: SKIP,
                   stored_credential_transaction_id: SKIP, reference: SKIP,
                   custom_price: SKIP, components: SKIP,
                   dunning_communication_delay_enabled: SKIP,
                   dunning_communication_delay_time_zone: SKIP,
                   product_price_point_id: SKIP,
                   product_price_point_handle: SKIP, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @credit_card_attributes = credit_card_attributes unless credit_card_attributes == SKIP
      @product_handle = product_handle unless product_handle == SKIP
      @product_id = product_id unless product_id == SKIP
      @product_change_delayed = product_change_delayed unless product_change_delayed == SKIP
      @next_product_id = next_product_id unless next_product_id == SKIP
      unless next_product_price_point_id == SKIP
        @next_product_price_point_id =
          next_product_price_point_id
      end
      @snap_day = snap_day unless snap_day == SKIP
      @initial_billing_at = initial_billing_at unless initial_billing_at == SKIP
      @defer_signup = defer_signup unless defer_signup == SKIP
      @next_billing_at = next_billing_at unless next_billing_at == SKIP
      @expires_at = expires_at unless expires_at == SKIP
      unless payment_collection_method == SKIP
        @payment_collection_method =
          payment_collection_method
      end
      @receives_invoice_emails = receives_invoice_emails unless receives_invoice_emails == SKIP
      @net_terms = net_terms unless net_terms == SKIP
      unless stored_credential_transaction_id == SKIP
        @stored_credential_transaction_id =
          stored_credential_transaction_id
      end
      @reference = reference unless reference == SKIP
      @custom_price = custom_price unless custom_price == SKIP
      @components = components unless components == SKIP
      unless dunning_communication_delay_enabled == SKIP
        @dunning_communication_delay_enabled =
          dunning_communication_delay_enabled
      end
      unless dunning_communication_delay_time_zone == SKIP
        @dunning_communication_delay_time_zone =
          dunning_communication_delay_time_zone
      end
      @product_price_point_id = product_price_point_id unless product_price_point_id == SKIP
      unless product_price_point_handle == SKIP
        @product_price_point_handle =
          product_price_point_handle
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      credit_card_attributes = CreditCardAttributes.from_hash(hash['credit_card_attributes']) if
        hash['credit_card_attributes']
      product_handle =
        hash.key?('product_handle') ? hash['product_handle'] : SKIP
      product_id = hash.key?('product_id') ? hash['product_id'] : SKIP
      product_change_delayed =
        hash.key?('product_change_delayed') ? hash['product_change_delayed'] : SKIP
      next_product_id =
        hash.key?('next_product_id') ? hash['next_product_id'] : SKIP
      next_product_price_point_id =
        hash.key?('next_product_price_point_id') ? hash['next_product_price_point_id'] : SKIP
      snap_day = hash.key?('snap_day') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:UpdateSubscriptionSnapDay), hash['snap_day']
      ) : SKIP
      initial_billing_at = if hash.key?('initial_billing_at')
                             (DateTimeHelper.from_rfc3339(hash['initial_billing_at']) if hash['initial_billing_at'])
                           else
                             SKIP
                           end
      defer_signup = hash['defer_signup'] ||= false
      next_billing_at = if hash.key?('next_billing_at')
                          (DateTimeHelper.from_rfc3339(hash['next_billing_at']) if hash['next_billing_at'])
                        else
                          SKIP
                        end
      expires_at = if hash.key?('expires_at')
                     (DateTimeHelper.from_rfc3339(hash['expires_at']) if hash['expires_at'])
                   else
                     SKIP
                   end
      payment_collection_method =
        hash.key?('payment_collection_method') ? hash['payment_collection_method'] : SKIP
      receives_invoice_emails =
        hash.key?('receives_invoice_emails') ? hash['receives_invoice_emails'] : SKIP
      net_terms = hash.key?('net_terms') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:UpdateSubscriptionNetTerms), hash['net_terms']
      ) : SKIP
      stored_credential_transaction_id =
        hash.key?('stored_credential_transaction_id') ? hash['stored_credential_transaction_id'] : SKIP
      reference = hash.key?('reference') ? hash['reference'] : SKIP
      custom_price = SubscriptionCustomPrice.from_hash(hash['custom_price']) if
        hash['custom_price']
      # Parameter is an array, so we need to iterate through it
      components = nil
      unless hash['components'].nil?
        components = []
        hash['components'].each do |structure|
          components << (UpdateSubscriptionComponent.from_hash(structure) if structure)
        end
      end

      components = SKIP unless hash.key?('components')
      dunning_communication_delay_enabled =
        hash.key?('dunning_communication_delay_enabled') ? hash['dunning_communication_delay_enabled'] : SKIP
      dunning_communication_delay_time_zone =
        hash.key?('dunning_communication_delay_time_zone') ? hash['dunning_communication_delay_time_zone'] : SKIP
      product_price_point_id =
        hash.key?('product_price_point_id') ? hash['product_price_point_id'] : SKIP
      product_price_point_handle =
        hash.key?('product_price_point_handle') ? hash['product_price_point_handle'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      UpdateSubscription.new(credit_card_attributes: credit_card_attributes,
                             product_handle: product_handle,
                             product_id: product_id,
                             product_change_delayed: product_change_delayed,
                             next_product_id: next_product_id,
                             next_product_price_point_id: next_product_price_point_id,
                             snap_day: snap_day,
                             initial_billing_at: initial_billing_at,
                             defer_signup: defer_signup,
                             next_billing_at: next_billing_at,
                             expires_at: expires_at,
                             payment_collection_method: payment_collection_method,
                             receives_invoice_emails: receives_invoice_emails,
                             net_terms: net_terms,
                             stored_credential_transaction_id: stored_credential_transaction_id,
                             reference: reference,
                             custom_price: custom_price,
                             components: components,
                             dunning_communication_delay_enabled: dunning_communication_delay_enabled,
                             dunning_communication_delay_time_zone: dunning_communication_delay_time_zone,
                             product_price_point_id: product_price_point_id,
                             product_price_point_handle: product_price_point_handle,
                             additional_properties: additional_properties)
    end

    def to_custom_initial_billing_at
      DateTimeHelper.to_rfc3339(initial_billing_at)
    end

    def to_custom_next_billing_at
      DateTimeHelper.to_rfc3339(next_billing_at)
    end

    def to_custom_expires_at
      DateTimeHelper.to_rfc3339(expires_at)
    end

    # Validates an instance of the object from a given value.
    # @param [UpdateSubscription | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} credit_card_attributes: #{@credit_card_attributes}, product_handle:"\
      " #{@product_handle}, product_id: #{@product_id}, product_change_delayed:"\
      " #{@product_change_delayed}, next_product_id: #{@next_product_id},"\
      " next_product_price_point_id: #{@next_product_price_point_id}, snap_day: #{@snap_day},"\
      " initial_billing_at: #{@initial_billing_at}, defer_signup: #{@defer_signup},"\
      " next_billing_at: #{@next_billing_at}, expires_at: #{@expires_at},"\
      " payment_collection_method: #{@payment_collection_method}, receives_invoice_emails:"\
      " #{@receives_invoice_emails}, net_terms: #{@net_terms}, stored_credential_transaction_id:"\
      " #{@stored_credential_transaction_id}, reference: #{@reference}, custom_price:"\
      " #{@custom_price}, components: #{@components}, dunning_communication_delay_enabled:"\
      " #{@dunning_communication_delay_enabled}, dunning_communication_delay_time_zone:"\
      " #{@dunning_communication_delay_time_zone}, product_price_point_id:"\
      " #{@product_price_point_id}, product_price_point_handle: #{@product_price_point_handle},"\
      " additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} credit_card_attributes: #{@credit_card_attributes.inspect}, product_handle:"\
      " #{@product_handle.inspect}, product_id: #{@product_id.inspect}, product_change_delayed:"\
      " #{@product_change_delayed.inspect}, next_product_id: #{@next_product_id.inspect},"\
      " next_product_price_point_id: #{@next_product_price_point_id.inspect}, snap_day:"\
      " #{@snap_day.inspect}, initial_billing_at: #{@initial_billing_at.inspect}, defer_signup:"\
      " #{@defer_signup.inspect}, next_billing_at: #{@next_billing_at.inspect}, expires_at:"\
      " #{@expires_at.inspect}, payment_collection_method: #{@payment_collection_method.inspect},"\
      " receives_invoice_emails: #{@receives_invoice_emails.inspect}, net_terms:"\
      " #{@net_terms.inspect}, stored_credential_transaction_id:"\
      " #{@stored_credential_transaction_id.inspect}, reference: #{@reference.inspect},"\
      " custom_price: #{@custom_price.inspect}, components: #{@components.inspect},"\
      " dunning_communication_delay_enabled: #{@dunning_communication_delay_enabled.inspect},"\
      " dunning_communication_delay_time_zone: #{@dunning_communication_delay_time_zone.inspect},"\
      " product_price_point_id: #{@product_price_point_id.inspect}, product_price_point_handle:"\
      " #{@product_price_point_handle.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
