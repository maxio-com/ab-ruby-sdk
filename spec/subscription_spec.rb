require_relative 'spec_helper'

RSpec.describe 'Awaiting sign up subscription' do
  before(:all) do
    @client = build_client
    @product_family = @client.product_families.read_product_family('handle:developer-experience-billing-plans').product_family
    @customer = Factories::Customer.create(@client)
    @product = Factories::Product.create(@client, product_family: @product_family)
    @metered_component = Factories::MeteredComponent.create(@client, product_family: @product_family)
  end

  it 'creates subscription with coupon and metered component' do
    coupon = Factories::Coupon.create(
      @client, product_family: @product_family, product: @product, component: @metered_component
    )

    subscription = Factories::Subscription.create(
      @client, product: @product, coupon_code: coupon.code, customer: @customer, component: @metered_component
    )

    expect(subscription.state).to eq('awaiting_signup')
    expect(subscription.coupon_code).to eq(coupon.code)
    expect(subscription.balance_in_cents).to eq(0)
    expect(subscription.total_revenue_in_cents).to eq(0)
    expect(subscription.product_price_in_cents).to eq(1000)
    expect(subscription.product_version_number).to eq(1)
    expect(subscription.payment_collection_method).to eq(AdvancedBilling::PaymentCollectionMethod::AUTOMATIC)

    expect(subscription.customer.id).to eq(@customer.id)
    expect(subscription.customer.first_name).to eq(@customer.first_name)
    expect(subscription.customer.last_name).to eq(@customer.last_name)
    expect(subscription.customer.email).to eq(@customer.email)
    expect(subscription.customer.cc_emails).to eq(@customer.cc_emails)
    expect(subscription.customer.organization).to eq(@customer.organization)
    expect(subscription.customer.reference).to eq(@customer.reference)
    expect(subscription.customer.address).to eq(@customer.address)
    expect(subscription.customer.address_2).to eq(@customer.address_2)
    expect(subscription.customer.city).to eq(@customer.city)
    expect(subscription.customer.state).to eq(@customer.state)
    expect(subscription.customer.state_name).to eq(@customer.state_name)
    expect(subscription.customer.zip).to eq(@customer.zip)
    expect(subscription.customer.country).to eq(@customer.country)
    expect(subscription.customer.country_name).to eq(@customer.country_name)
    expect(subscription.customer.phone).to eq(@customer.phone)

    expect(subscription.product.id).to eq(@product.id)
    expect(subscription.product.name).to eq(@product.name)
    expect(subscription.product.handle).to eq(@product.handle)
    expect(subscription.product.description).to eq(@product.description)
    expect(subscription.product.accounting_code).to eq(@product.accounting_code)
    expect(subscription.product.request_credit_card).to eq(@product.request_credit_card)
    expect(subscription.product.expiration_interval).to eq(@product.expiration_interval)
    expect(subscription.product.expiration_interval_unit).to eq(@product.expiration_interval_unit)
    expect(subscription.product.price_in_cents).to eq(@product.price_in_cents)
    expect(subscription.product.interval).to eq(@product.interval)
    expect(subscription.product.interval_unit).to eq(@product.interval_unit)
    expect(subscription.product.initial_charge_in_cents).to eq(@product.initial_charge_in_cents)
    expect(subscription.product.trial_price_in_cents).to eq(@product.trial_price_in_cents)
    expect(subscription.product.trial_interval).to eq(@product.trial_interval)
    expect(subscription.product.trial_interval_unit).to eq(@product.trial_interval_unit)

    expect(subscription.product.product_family.id).to eq(@product_family.id)
    expect(subscription.product.product_family.name).to eq(@product_family.name)
    expect(subscription.product.product_family.handle).to eq(@product_family.handle)
    expect(subscription.product.product_family.description).to eq(@product_family.description)

    coupons = @client.subscriptions.read_subscription(subscription.id, include: ['coupons']).subscription.coupons
    expect(coupons.size).to eq(1)
    expect(coupons.first.code).to eq(coupon.code)

    subscription_component = @client.subscription_components.list_subscription_components('subscription_id' => subscription.id).find do |response|
      response.component.component_id == @metered_component.id
    end

    expect(subscription_component.component.unit_balance).to eq(1)
  end

  it 'does not create subscription with invalid coupon code' do
    expect {
      Factories::Subscription.create(@client, product: @product, coupon_code: 'abc', customer: @customer, component: @metered_component)
    }.to raise_error do |error|
      expect(error).to be_a(AdvancedBilling::ErrorListResponseException)
      expect(error.response.status_code).to eq(422)
      expect(JSON.parse(error.response.raw_body)['errors']).to eq(["Coupon Code: 'abc' - Coupon code could not be found."])
    end
  end

  it 'does not create subscription with invalid credentials' do
    expect {
      Factories::Subscription.create(build_client(api_key: 'invalid'), product: @product, coupon_code: 'abc', customer: @customer, component: @metered_component)
    }.to raise_error do |error|
      expect(error).to be_a(AdvancedBilling::APIException)
      expect(error.response.status_code).to eq(401)
      expect(error.response.reason_phrase).to eq('Unauthorized')
    end
  end
end
