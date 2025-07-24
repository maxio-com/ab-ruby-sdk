# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # SiteSummary Model.
  class SiteSummary < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :seller_name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :site_name

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :site_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :site_currency

    # TODO: Write general description for this method
    # @return [SiteStatistics]
    attr_accessor :stats

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['seller_name'] = 'seller_name'
      @_hash['site_name'] = 'site_name'
      @_hash['site_id'] = 'site_id'
      @_hash['site_currency'] = 'site_currency'
      @_hash['stats'] = 'stats'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        seller_name
        site_name
        site_id
        site_currency
        stats
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(seller_name: SKIP, site_name: SKIP, site_id: SKIP,
                   site_currency: SKIP, stats: SKIP, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @seller_name = seller_name unless seller_name == SKIP
      @site_name = site_name unless site_name == SKIP
      @site_id = site_id unless site_id == SKIP
      @site_currency = site_currency unless site_currency == SKIP
      @stats = stats unless stats == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      seller_name = hash.key?('seller_name') ? hash['seller_name'] : SKIP
      site_name = hash.key?('site_name') ? hash['site_name'] : SKIP
      site_id = hash.key?('site_id') ? hash['site_id'] : SKIP
      site_currency = hash.key?('site_currency') ? hash['site_currency'] : SKIP
      stats = SiteStatistics.from_hash(hash['stats']) if hash['stats']

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      SiteSummary.new(seller_name: seller_name,
                      site_name: site_name,
                      site_id: site_id,
                      site_currency: site_currency,
                      stats: stats,
                      additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} seller_name: #{@seller_name}, site_name: #{@site_name}, site_id:"\
      " #{@site_id}, site_currency: #{@site_currency}, stats: #{@stats}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} seller_name: #{@seller_name.inspect}, site_name: #{@site_name.inspect},"\
      " site_id: #{@site_id.inspect}, site_currency: #{@site_currency.inspect}, stats:"\
      " #{@stats.inspect}, additional_properties: #{get_additional_properties}>"
    end
  end
end
