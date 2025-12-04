# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  ##
  # ProxySettings encapsulates HTTP proxy configuration for Faraday,
  # including optional basic authentication.
  #
  class ProxySettings < CoreLibrary::ProxySettings
    def self.from_env
      address = ENV['PROXY_ADDRESS']
      port = ENV['PROXY_PORT']
      username = ENV['PROXY_USERNAME']
      password = ENV['PROXY_PASSWORD']
      return nil if address.nil? || address.strip.empty?

      new(address: address, port: port, username: username, password: password)
    end
  end
end
