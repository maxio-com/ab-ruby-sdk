require_relative 'spec_helper'

RSpec.describe AdvancedBilling::SitesController do
  describe '#read_site' do
    context 'when credentials are valid' do
      it 'returns site data' do
        client = build_client
        site = client.sites.read_site.site

        expect(site.id).to eq(4719)
        expect(site.name).to eq('Ruby SDK env')
        expect(site.subdomain).to eq('ruby-sdk')
        expect(site.currency).to eq('USD')
        expect(site.seller_id).to eq(722159)
        expect(site.non_primary_currencies).to eq([])
        expect(site.relationship_invoicing_enabled).to eq(true)
        expect(site.customer_hierarchy_enabled).to eq(false)
        expect(site.whopays_enabled).to eq(false)
        expect(site.whopays_default_payer).to eq('self-ungrouped')
        expect(site.default_payment_collection_method).to eq('automatic')

        allocation_settings = site.allocation_settings
        expect(allocation_settings.upgrade_charge).to eq(AdvancedBilling::CreditType::PRORATED)
        expect(allocation_settings.accrue_charge).to eq('true')
        expect(allocation_settings.downgrade_credit).to eq(AdvancedBilling::CreditType::NONE)

        organization_address = site.organization_address
        expect(organization_address.street).to eq('Asdf Street')
        expect(organization_address.line2).to eq('123/444')
        expect(organization_address.city).to eq('San Antonio')
        expect(organization_address.state).to eq('TX')
        expect(organization_address.zip).to eq('78015')
        expect(organization_address.country).to eq('US')
        expect(organization_address.name).to eq('Developer Experience')
        expect(organization_address.phone).to eq('555 111 222')
        
        tax_configuration = site.tax_configuration
        expect(tax_configuration.fully_configured).to eq(false)
        expect(tax_configuration.kind).to eq(AdvancedBilling::TaxConfigurationKind::CUSTOM)
        expect(tax_configuration.destination_address).to eq(AdvancedBilling::TaxDestinationAddress::SHIPPING_THEN_BILLING)

        net_terms = site.net_terms
        expect(net_terms.default_net_terms).to eq(0)
        expect(net_terms.automatic_net_terms).to eq(0)
        expect(net_terms.remittance_net_terms).to eq(0)
        expect(net_terms.net_terms_on_remittance_signups_enabled).to eq(false)
        expect(net_terms.custom_net_terms_enabled).to eq(false)
      end
    end

    context 'when credentials are invalid' do
      it 'raises API exception' do
        client = build_client(api_key: 'invalid')

        expect { client.sites.read_site }.to raise_error do |error|
          expect(error).to be_a(AdvancedBilling::APIException)
          expect(error.response.status_code).to eq(401)
          expect(error.response.reason_phrase).to eq('Unauthorized')
        end
      end
    end
  end
end
