require 'securerandom'

require 'rspec'
require 'dotenv'
require 'ffaker'
require 'pry'

require_relative '../lib/advanced_billing'
require_relative 'factories/customer'
require_relative 'factories/product'
require_relative 'factories/product_family'
require_relative 'factories/metered_component'
require_relative 'factories/coupon'
require_relative 'factories/subscription'

require_relative 'factories/on_off_component'
require_relative 'factories/quantity_based_component'
require_relative 'factories/product'
require_relative 'factories/customer'
require_relative 'factories/subscription'
require_relative 'factories/coupon'

def build_client(api_key: nil, subdomain: nil)
  local_conf = Dotenv.parse('.env.test')

  AdvancedBilling::Client.new(
    basic_auth_credentials: AdvancedBilling::BasicAuthCredentials.new(
      username: api_key || ENV.fetch('API_KEY', local_conf['API_KEY']),
      password: 'x'
    ),
    site: subdomain || ENV.fetch('SUBDOMAIN', local_conf['SUBDOMAIN'])
  )
end
