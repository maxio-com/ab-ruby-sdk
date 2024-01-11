require 'rspec'
require 'dotenv'
require_relative '../lib/advanced_billing'

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
