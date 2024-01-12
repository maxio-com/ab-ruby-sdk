module Factories
  class Coupon
    def self.create(client, product_family:, product:, component:)
      token = SecureRandom.hex(6)

      client.coupons.create_coupon(
        product_family.id,
        body: AdvancedBilling::CreateOrUpdateCoupon.new(
          AdvancedBilling::CreateOrUpdatePercentageCoupon.from_hash(
            'name' => "100% off first month of usage - #{token}",
            'code' => "100OFF#{token}",
            'percentage' => '100',
            'description' => '100% off one-time',
            'allow_negative_balance' => false,
            'recurring' => false,
            'end_date' => DateTime.new(Time.now.year + 1, 8, 29, 12).to_s,
            'product_family_id' => product_family.id,
            'stackable' => false,
            'exclude_mid_period_allocations' => true,
            'apply_on_cancel_at_end_of_period' => true
          ),
          {
            product.id => true
          },
          {
            component.id => true
          }
        )
      ).coupon
    end
  end
end
