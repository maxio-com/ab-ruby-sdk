# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # An enum for SDK environments.
  class Environment
    # PRODUCTION: Production server
    # ENVIRONMENT2: Production server
    ENVIRONMENT = [
      PRODUCTION = 'production'.freeze,
      ENVIRONMENT2 = 'environment2'.freeze
    ].freeze
  end

  # An enum for API servers.
  class Server
    SERVER = [
      DEFAULT = 'default'.freeze
    ].freeze
  end

  # All configuration including auth info and base URI for the API access
  # are configured in this class.
  class Configuration < CoreLibrary::HttpClientConfiguration
    # The attribute readers for properties.
    attr_reader :environment, :subdomain, :domain, :basic_auth_credentials

    class << self
      attr_reader :environments
    end

    def initialize(
      connection: nil, adapter: :net_http_persistent, timeout: 120,
      max_retries: 0, retry_interval: 1, backoff_factor: 2,
      retry_statuses: [408, 413, 429, 500, 502, 503, 504, 521, 522, 524],
      retry_methods: %i[get put], http_callback: nil,
      environment: Environment::PRODUCTION, subdomain: 'subdomain',
      domain: 'chargify.com', basic_auth_credentials: nil
    )

      super connection: connection, adapter: adapter, timeout: timeout,
            max_retries: max_retries, retry_interval: retry_interval,
            backoff_factor: backoff_factor, retry_statuses: retry_statuses,
            retry_methods: retry_methods, http_callback: http_callback

      # Current API environment
      @environment = String(environment)

      # The subdomain for your Advanced Billing site.
      @subdomain = subdomain

      # The Advanced Billing server domain.
      @domain = domain

      # The object holding Basic Authentication credentials
      @basic_auth_credentials = basic_auth_credentials

      # Initializing Basic Authentication credentials with the provided auth parameters
     @basic_auth_credentials = basic_auth_credentials

      # The Http Client to use for making requests.
      set_http_client CoreLibrary::FaradayClient.new(self)
    end

    def clone_with(connection: nil, adapter: nil, timeout: nil,
                   max_retries: nil, retry_interval: nil, backoff_factor: nil,
                   retry_statuses: nil, retry_methods: nil, http_callback: nil,
                   environment: nil, subdomain: nil, domain: nil,
                   basic_auth_credentials: nil)
      connection ||= self.connection
      adapter ||= self.adapter
      timeout ||= self.timeout
      max_retries ||= self.max_retries
      retry_interval ||= self.retry_interval
      backoff_factor ||= self.backoff_factor
      retry_statuses ||= self.retry_statuses
      retry_methods ||= self.retry_methods
      http_callback ||= self.http_callback
      environment ||= self.environment
      subdomain ||= self.subdomain
      domain ||= self.domain
      basic_auth_credentials ||= basic_auth_credentials

      Configuration.new(connection: connection, adapter: adapter,
                        timeout: timeout, max_retries: max_retries,
                        retry_interval: retry_interval,
                        backoff_factor: backoff_factor,
                        retry_statuses: retry_statuses,
                        retry_methods: retry_methods,
                        http_callback: http_callback, environment: environment,
                        subdomain: subdomain, domain: domain,
                        basic_auth_credentials: basic_auth_credentials)
    end


    # All the environments the SDK can run in.
    ENVIRONMENTS = {
      Environment::PRODUCTION => {
        Server::DEFAULT => 'https://{subdomain}.{domain}'
      },
      Environment::ENVIRONMENT2 => {
        Server::DEFAULT => 'https://events.chargify.com'
      }
    }.freeze

    # Generates the appropriate base URI for the environment and the server.
    # @param [Configuration::Server] server The server enum for which the base URI is
    # required.
    # @return [String] The base URI.
    def get_base_uri(server = Server::DEFAULT)
      parameters = {
        'subdomain' => { 'value' => subdomain, 'encode' => false },
        'domain' => { 'value' => domain, 'encode' => false }
      }
      APIHelper.append_url_with_template_parameters(
        ENVIRONMENTS[environment][server], parameters
      )
    end
  end
end
