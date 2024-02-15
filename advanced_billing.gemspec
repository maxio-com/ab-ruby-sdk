Gem::Specification.new do |s|
  s.name = 'maxio-advanced-billing-sdk'
  s.version = '1.0.1'
  s.summary = 'SDK for Maxio Advanced Billing'
  s.description = "Ultimate billing and pricing flexibility for B2B SaaS.\nMaxio integrates directly into your product, so you can seamlessly manage your product catalog, bill customers, and collect payments."
  s.authors = ['Maxio SDK']
  s.email = ['maxio-sdk@maxio.com']
  s.homepage = 'https://www.maxio.com/product/advanced-billing'
  s.licenses = ['MIT']
  s.metadata  = {
}

  s.add_dependency('apimatic_core_interfaces', '~> 0.2.0')
  s.add_dependency('apimatic_core', '~> 0.3.0')
  s.add_dependency('apimatic_faraday_client_adapter', '~> 0.1.0')
  s.required_ruby_version = ['>= 2.6']
  s.files = Dir['{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*']
  s.require_paths = ['lib']
end
