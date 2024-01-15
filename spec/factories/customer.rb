module Factories
  class Customer
    def self.create(client)
      client.customers.create_customer(
        body: AdvancedBilling::CreateCustomerRequest.new(
          AdvancedBilling::CreateCustomer.from_hash(
            'first_name' => FFaker::Name.first_name,
            'last_name' => FFaker::Name.last_name,
            'email' => FFaker::Internet.email,
            'cc_emails' => FFaker::Internet.email,
            'organization' => FFaker::Company.name,
            'reference' => FFaker::Number.number(digits: 10),
            'address' => FFaker::AddressUS.street_address,
            'city' => FFaker::AddressUS.city,
            'state' => FFaker::AddressUS.state,
            'zip' => FFaker::AddressUS.zip_code,
            'country' => 'US',
            'phone' => FFaker::PhoneNumber.short_phone_number,
            'locale' => 'es-MX'
          )
        )
      ).customer
    end
  end
end
