# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # An enum for SDK environments.
  class Environment
    # US: Default Advanced Billing environment hosted in US. Valid for the majority of our customers.
    # EU: Advanced Billing environment hosted in EU. Use only when you requested EU hosting for your AB account.
    ENVIRONMENT = [
      US = 'US'.freeze,
      EU = 'EU'.freeze
    ].freeze

    # Converts a string or symbol into a valid Environment constant.
    def self.from_value(value, default_value = US)
      return default_value if value.nil?

      str = value.to_s.strip.downcase
      case str
      when 'us' then US
      when 'eu' then EU

      else
        warn "[Environment] Unknown environment '#{value}', falling back to #{default_value} "
        default_value
      end
    end
  end

  # An enum for API servers.
  class Server
    SERVER = [
      PRODUCTION = 'production'.freeze,
      EBB = 'ebb'.freeze
    ].freeze

    # Converts a string or symbol into a valid Server constant.
    def self.from_value(value, default_value = PRODUCTION)
      return default_value if value.nil?

      str = value.to_s.strip.downcase
      case str
      when 'production' then PRODUCTION
      when 'ebb' then EBB

      else
        warn "[Server] Unknown server '#{value}', falling back to #{default_value} "
        default_value
      end
    end
  end

  # All configuration including auth info and base URI for the API access
  # are configured in this class.
  class Configuration < CoreLibrary::HttpClientConfiguration
    # The attribute readers for properties.
    attr_reader :environment, :site, :basic_auth_credentials

    class << self
      attr_reader :environments
    end

    def initialize(
      connection: nil, adapter: :net_http_persistent, timeout: 120,
      max_retries: 0, retry_interval: 1, backoff_factor: 2,
      retry_statuses: [408, 413, 429, 500, 502, 503, 504, 521, 522, 524],
      retry_methods: %i[get put], http_callback: nil, proxy_settings: nil,
      environment: Environment::US, site: 'subdomain',
      basic_auth_credentials: nil
    )
      super connection: connection, adapter: adapter, timeout: timeout,
            max_retries: max_retries, retry_interval: retry_interval,
            backoff_factor: backoff_factor, retry_statuses: retry_statuses,
            retry_methods: retry_methods, http_callback: http_callback,
            proxy_settings: proxy_settings

      # Current API environment
      @environment = String(environment)

      # The subdomain for your Advanced Billing site.
      @site = site

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
                   proxy_settings: nil, environment: nil, site: nil,
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
      proxy_settings ||= self.proxy_settings
      environment ||= self.environment
      site ||= self.site
      basic_auth_credentials ||= self.basic_auth_credentials

      Configuration.new(connection: connection, adapter: adapter,
                        timeout: timeout, max_retries: max_retries,
                        retry_interval: retry_interval,
                        backoff_factor: backoff_factor,
                        retry_statuses: retry_statuses,
                        retry_methods: retry_methods,
                        http_callback: http_callback,
                        proxy_settings: proxy_settings,
                        environment: environment, site: site,
                        basic_auth_credentials: basic_auth_credentials)
    end


    # All the environments the SDK can run in.
    ENVIRONMENTS = {
      Environment::US => {
        Server::PRODUCTION => 'https://{site}.chargify.com',
        Server::EBB => 'https://events.chargify.com/{site}'
      },
      Environment::EU => {
        Server::PRODUCTION => 'https://{site}.ebilling.maxio.com',
        Server::EBB => 'https://events.chargify.com/{site}'
      }
    }.freeze

    # Generates the appropriate base URI for the environment and the server.
    # @param [Configuration::Server] server The server enum for which the base URI is
    # required.
    # @return [String] The base URI.
    def get_base_uri(server = Server::PRODUCTION)
      parameters = {
        'site' => { 'value' => site, 'encode' => false }
      }
      APIHelper.append_url_with_template_parameters(
        ENVIRONMENTS[environment][server], parameters
      )
    end

    # Builds a Configuration instance using environment variables.
    def self.build_default_config_from_env
      # === Core environment ===
      environment = Environment.from_value(ENV.fetch('ENVIRONMENT', 'us'))
      site = ENV.fetch('SITE', 'subdomain')
      timeout = (ENV['TIMEOUT'] || 120).to_f
      max_retries = (ENV['MAX_RETRIES'] || 0).to_i
      retry_interval = (ENV['RETRY_INTERVAL'] || 1).to_f
      backoff_factor = (ENV['BACKOFF_FACTOR'] || 2).to_f
      retry_statuses = ENV.fetch('RETRY_STATUSES',
                                 '[408, 413, 429, 500, 502, 503, 504, 521, 522, 524]').gsub(/[\[\]]/, '')
                                          .split(',')
                                          .map(&:strip)
                                          .map do |item|
                                            item.match?(/\A\d+\z/) ? item.to_i : item.downcase
                                          end
      retry_methods = ENV.fetch('RETRY_METHODS', '%i[get put]').gsub(/[\[\]]/, '')
                                          .split(',')
                                          .map(&:strip)
                                          .map do |item|
                                            item.match?(/\A\d+\z/) ? item.to_i : item.downcase
                                          end

      # === Authentication credentials ===
      basic_auth_credentials = BasicAuthCredentials.from_env

      # === Proxy settings ===
      proxy_settings = ProxySettings.from_env

      Configuration.new(
        environment: environment,
        site: site,
        timeout: timeout,
        max_retries: max_retries,
        retry_interval: retry_interval,
        backoff_factor: backoff_factor,
        retry_statuses: retry_statuses,
        retry_methods: retry_methods,
        basic_auth_credentials: basic_auth_credentials,
        proxy_settings: proxy_settings
      )
    end
  end
end
