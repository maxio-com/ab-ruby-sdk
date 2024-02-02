module Factories
  class Subscription
    def self.create(client, product:, customer:, coupon_code: nil, component: nil)
      subscription_attributes = {
        'product_id' => product.id,
        'payment_collection_method' => 'automatic',
        'customer_id' => customer.id,
        'next_billing_at' => nil,
        'currency' => 'USD',
        'initial_billing_at' => (Date.today + 1).to_datetime.to_s,
        'payment_profile_attributes' => {
          'first_name' => 'Joe',
          'last_name' => 'Smith',
          'full_number' => '4111111111111111',
          'card_type' => AdvancedBilling::CardType::VISA,
          'expiration_month' => '1',
          'expiration_year' => Time.now.year + 1,
          'billing_address' => '123 Mass Ave.',
          'billing_address_2' => 'billing_address_22',
          'billing_city' => 'Boston',
          'billing_state' => 'MA',
          'billing_country' => 'US',
          'billing_zip' => '02120'
        }
      }

      unless component.nil?
        subscription_attributes['components'] = [
          {
            'component_id' => component.id,
            'enabled' => true,
            'unit_balance' => 1
          }
        ]
      end

      unless coupon_code.nil?
        subscription_attributes['coupon_code'] = coupon_code
      end

      client.subscriptions.create_subscription(
        body: AdvancedBilling::CreateSubscriptionRequest.new(
          AdvancedBilling::CreateSubscription.from_hash(subscription_attributes)
        )
      ).subscription
    end
  end
end
