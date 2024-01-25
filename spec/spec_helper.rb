require 'securerandom'

require 'rspec'
require 'dotenv'
require 'ffaker'
require 'pry'

require_relative '../lib/advanced_billing'
require_relative 'factories/customer'
require_relative 'factories/product'
require_relative 'factories/metered_component'
require_relative 'factories/coupon'
require_relative 'factories/subscription'

require_relative 'factories/on_off_component'
require_relative 'factories/quantity_based_component'
require_relative 'factories/product'
require_relative 'factories/customer'
require_relative 'factories/subscription'
require_relative 'factories/coupon'

def build_client(api_key: nil, subdomain: nil, domain: nil)
  local_conf = Dotenv.parse('.env.test')

  AdvancedBilling::Client.new(
    basic_auth_user_name: api_key || ENV.fetch('API_KEY', local_conf['API_KEY']),
    basic_auth_password: 'x',
    environment: AdvancedBilling::Environment::PRODUCTION,
    subdomain: subdomain || ENV.fetch('SUBDOMAIN', local_conf['SUBDOMAIN']),
    domain: domain || ENV.fetch('DOMAIN', local_conf['DOMAIN'])
  )
end
