module Factories
  class Coupon
    def self.create(client, product_family:, product:, percentage:, component: nil)
      token = SecureRandom.hex(6)

      coupon_attributes = {
        'name' => "#{percentage}% off first month of usage - #{token}",
        'code' => "#{percentage}OFF#{token}",
        'percentage' => percentage,
        'description' => "#{percentage}% off one-time",
        'allow_negative_balance' => false,
        'recurring' => false,
        'end_date' => DateTime.new(Time.now.year + 1, 8, 29, 12).to_s,
        'product_family_id' => product_family.id,
        'stackable' => false,
        'exclude_mid_period_allocations' => true,
        'apply_on_cancel_at_end_of_period' => true
      }

      client.coupons.create_coupon(
        product_family.id,
        body: AdvancedBilling::CouponRequest.new(
          coupon: AdvancedBilling::CouponPayload.from_hash(coupon_attributes),
          restricted_products: { product.id => true },
          restricted_components: component.nil? ? {} : { component.id => true }
        )
      ).coupon
    end
  end
end
