require 'rspec'
require 'dotenv'
require 'ffaker'
require 'pry'

require_relative '../lib/advanced_billing'

require_relative 'factories/customer'
require_relative 'factories/subscription'
require_relative 'factories/product'
require_relative 'factories/coupon'

def build_client(api_key: nil, subdomain: nil, domain: nil)
  local_conf = Dotenv.parse('.env.test')

  AdvancedBilling::Client.new(
    basic_auth_credentials: AdvancedBilling::BasicAuthCredentials.new(
      username: api_key || ENV.fetch('API_KEY', local_conf['API_KEY']),
      password: 'x'
    ),
    environment: AdvancedBilling::Environment::PRODUCTION,
    subdomain: subdomain || ENV.fetch('SUBDOMAIN', local_conf['SUBDOMAIN']),
    domain: domain || ENV.fetch('DOMAIN', local_conf['DOMAIN'])
  )
end
