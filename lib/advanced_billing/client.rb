# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  #  advanced_billing client class.
  class Client
    attr_reader :config, :auth_managers

    # Access to api_exports controller.
    # @return [APIExportsController] Returns the controller instance.
    def api_exports
      @api_exports ||= APIExportsController.new @global_configuration
    end

    # Access to advance_invoice controller.
    # @return [AdvanceInvoiceController] Returns the controller instance.
    def advance_invoice
      @advance_invoice ||= AdvanceInvoiceController.new @global_configuration
    end

    # Access to billing_portal controller.
    # @return [BillingPortalController] Returns the controller instance.
    def billing_portal
      @billing_portal ||= BillingPortalController.new @global_configuration
    end

    # Access to coupons controller.
    # @return [CouponsController] Returns the controller instance.
    def coupons
      @coupons ||= CouponsController.new @global_configuration
    end

    # Access to components controller.
    # @return [ComponentsController] Returns the controller instance.
    def components
      @components ||= ComponentsController.new @global_configuration
    end

    # Access to customers controller.
    # @return [CustomersController] Returns the controller instance.
    def customers
      @customers ||= CustomersController.new @global_configuration
    end

    # Access to custom_fields controller.
    # @return [CustomFieldsController] Returns the controller instance.
    def custom_fields
      @custom_fields ||= CustomFieldsController.new @global_configuration
    end

    # Access to events controller.
    # @return [EventsController] Returns the controller instance.
    def events
      @events ||= EventsController.new @global_configuration
    end

    # Access to events_based_billing_segments controller.
    # @return [EventsBasedBillingSegmentsController] Returns the controller instance.
    def events_based_billing_segments
      @events_based_billing_segments ||= EventsBasedBillingSegmentsController.new @global_configuration
    end

    # Access to insights controller.
    # @return [InsightsController] Returns the controller instance.
    def insights
      @insights ||= InsightsController.new @global_configuration
    end

    # Access to invoices controller.
    # @return [InvoicesController] Returns the controller instance.
    def invoices
      @invoices ||= InvoicesController.new @global_configuration
    end

    # Access to offers controller.
    # @return [OffersController] Returns the controller instance.
    def offers
      @offers ||= OffersController.new @global_configuration
    end

    # Access to payment_profiles controller.
    # @return [PaymentProfilesController] Returns the controller instance.
    def payment_profiles
      @payment_profiles ||= PaymentProfilesController.new @global_configuration
    end

    # Access to product_families controller.
    # @return [ProductFamiliesController] Returns the controller instance.
    def product_families
      @product_families ||= ProductFamiliesController.new @global_configuration
    end

    # Access to products controller.
    # @return [ProductsController] Returns the controller instance.
    def products
      @products ||= ProductsController.new @global_configuration
    end

    # Access to product_price_points controller.
    # @return [ProductPricePointsController] Returns the controller instance.
    def product_price_points
      @product_price_points ||= ProductPricePointsController.new @global_configuration
    end

    # Access to proforma_invoices controller.
    # @return [ProformaInvoicesController] Returns the controller instance.
    def proforma_invoices
      @proforma_invoices ||= ProformaInvoicesController.new @global_configuration
    end

    # Access to reason_codes controller.
    # @return [ReasonCodesController] Returns the controller instance.
    def reason_codes
      @reason_codes ||= ReasonCodesController.new @global_configuration
    end

    # Access to referral_codes controller.
    # @return [ReferralCodesController] Returns the controller instance.
    def referral_codes
      @referral_codes ||= ReferralCodesController.new @global_configuration
    end

    # Access to sales_commissions controller.
    # @return [SalesCommissionsController] Returns the controller instance.
    def sales_commissions
      @sales_commissions ||= SalesCommissionsController.new @global_configuration
    end

    # Access to sites controller.
    # @return [SitesController] Returns the controller instance.
    def sites
      @sites ||= SitesController.new @global_configuration
    end

    # Access to subscriptions controller.
    # @return [SubscriptionsController] Returns the controller instance.
    def subscriptions
      @subscriptions ||= SubscriptionsController.new @global_configuration
    end

    # Access to subscription_components controller.
    # @return [SubscriptionComponentsController] Returns the controller instance.
    def subscription_components
      @subscription_components ||= SubscriptionComponentsController.new @global_configuration
    end

    # Access to subscription_groups controller.
    # @return [SubscriptionGroupsController] Returns the controller instance.
    def subscription_groups
      @subscription_groups ||= SubscriptionGroupsController.new @global_configuration
    end

    # Access to subscription_group_invoice_account controller.
    # @return [SubscriptionGroupInvoiceAccountController] Returns the controller instance.
    def subscription_group_invoice_account
      @subscription_group_invoice_account ||= SubscriptionGroupInvoiceAccountController.new @global_configuration
    end

    # Access to subscription_group_status controller.
    # @return [SubscriptionGroupStatusController] Returns the controller instance.
    def subscription_group_status
      @subscription_group_status ||= SubscriptionGroupStatusController.new @global_configuration
    end

    # Access to subscription_invoice_account controller.
    # @return [SubscriptionInvoiceAccountController] Returns the controller instance.
    def subscription_invoice_account
      @subscription_invoice_account ||= SubscriptionInvoiceAccountController.new @global_configuration
    end

    # Access to subscription_notes controller.
    # @return [SubscriptionNotesController] Returns the controller instance.
    def subscription_notes
      @subscription_notes ||= SubscriptionNotesController.new @global_configuration
    end

    # Access to subscription_products controller.
    # @return [SubscriptionProductsController] Returns the controller instance.
    def subscription_products
      @subscription_products ||= SubscriptionProductsController.new @global_configuration
    end

    # Access to subscription_status controller.
    # @return [SubscriptionStatusController] Returns the controller instance.
    def subscription_status
      @subscription_status ||= SubscriptionStatusController.new @global_configuration
    end

    # Access to webhooks controller.
    # @return [WebhooksController] Returns the controller instance.
    def webhooks
      @webhooks ||= WebhooksController.new @global_configuration
    end

    def initialize(connection: nil, adapter: :net_http_persistent, timeout: 30,
                   max_retries: 0, retry_interval: 1, backoff_factor: 2,
                   retry_statuses: [408, 413, 429, 500, 502, 503, 504, 521, 522, 524],
                   retry_methods: %i[get put], http_callback: nil,
                   environment: Environment::PRODUCTION, subdomain: 'subdomain',
                   domain: 'chargify.com',
                   basic_auth_user_name: 'TODO: Replace',
                   basic_auth_password: 'TODO: Replace', config: nil)
      @config = if config.nil?
                  Configuration.new(connection: connection, adapter: adapter,
                                    timeout: timeout, max_retries: max_retries,
                                    retry_interval: retry_interval,
                                    backoff_factor: backoff_factor,
                                    retry_statuses: retry_statuses,
                                    retry_methods: retry_methods,
                                    http_callback: http_callback,
                                    environment: environment,
                                    subdomain: subdomain, domain: domain,
                                    basic_auth_user_name: basic_auth_user_name,
                                    basic_auth_password: basic_auth_password)
                else
                  config
                end
      user_agent_params = BaseController.user_agent_parameters

      @global_configuration = GlobalConfiguration.new(client_configuration: @config)
                                                 .base_uri_executor(@config.method(:get_base_uri))
                                                 .global_errors(BaseController::GLOBAL_ERRORS)
                                                 .user_agent(BaseController.user_agent,
                                                             agent_parameters: user_agent_params)

      initialize_auth_managers(@global_configuration)
      @global_configuration = @global_configuration.auth_managers(@auth_managers)
    end

    # Initializes the auth managers hash used for authenticating API calls.
    # @param [GlobalConfiguration] global_config The global configuration of the SDK)
    def initialize_auth_managers(global_config)
      @auth_managers = {}
      http_client_config = global_config.client_configuration
      ['global'].each { |auth| @auth_managers[auth] = nil }
      @auth_managers['global'] = BasicAuth.new(http_client_config.basic_auth_user_name,
                                               http_client_config.basic_auth_password)
    end
  end
end
