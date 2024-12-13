# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module AdvancedBilling
  # Offer Model.
  class Offer < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :id

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :site_id

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :product_family_id

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :product_id

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :product_price_point_id

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :product_revisable_number

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :handle

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :description

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :created_at

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :updated_at

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :archived_at

    # TODO: Write general description for this method
    # @return [Array[OfferItem]]
    attr_accessor :offer_items

    # TODO: Write general description for this method
    # @return [Array[OfferDiscount]]
    attr_accessor :offer_discounts

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :product_family_name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :product_name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :product_price_point_name

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :product_price_in_cents

    # TODO: Write general description for this method
    # @return [Array[OfferSignupPage]]
    attr_accessor :offer_signup_pages

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['site_id'] = 'site_id'
      @_hash['product_family_id'] = 'product_family_id'
      @_hash['product_id'] = 'product_id'
      @_hash['product_price_point_id'] = 'product_price_point_id'
      @_hash['product_revisable_number'] = 'product_revisable_number'
      @_hash['name'] = 'name'
      @_hash['handle'] = 'handle'
      @_hash['description'] = 'description'
      @_hash['created_at'] = 'created_at'
      @_hash['updated_at'] = 'updated_at'
      @_hash['archived_at'] = 'archived_at'
      @_hash['offer_items'] = 'offer_items'
      @_hash['offer_discounts'] = 'offer_discounts'
      @_hash['product_family_name'] = 'product_family_name'
      @_hash['product_name'] = 'product_name'
      @_hash['product_price_point_name'] = 'product_price_point_name'
      @_hash['product_price_in_cents'] = 'product_price_in_cents'
      @_hash['offer_signup_pages'] = 'offer_signup_pages'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        site_id
        product_family_id
        product_id
        product_price_point_id
        product_revisable_number
        name
        handle
        description
        created_at
        updated_at
        archived_at
        offer_items
        offer_discounts
        product_family_name
        product_name
        product_price_point_name
        product_price_in_cents
        offer_signup_pages
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        description
        archived_at
      ]
    end

    def initialize(id: SKIP, site_id: SKIP, product_family_id: SKIP,
                   product_id: SKIP, product_price_point_id: SKIP,
                   product_revisable_number: SKIP, name: SKIP, handle: SKIP,
                   description: SKIP, created_at: SKIP, updated_at: SKIP,
                   archived_at: SKIP, offer_items: SKIP, offer_discounts: SKIP,
                   product_family_name: SKIP, product_name: SKIP,
                   product_price_point_name: SKIP, product_price_in_cents: SKIP,
                   offer_signup_pages: SKIP, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @id = id unless id == SKIP
      @site_id = site_id unless site_id == SKIP
      @product_family_id = product_family_id unless product_family_id == SKIP
      @product_id = product_id unless product_id == SKIP
      @product_price_point_id = product_price_point_id unless product_price_point_id == SKIP
      @product_revisable_number = product_revisable_number unless product_revisable_number == SKIP
      @name = name unless name == SKIP
      @handle = handle unless handle == SKIP
      @description = description unless description == SKIP
      @created_at = created_at unless created_at == SKIP
      @updated_at = updated_at unless updated_at == SKIP
      @archived_at = archived_at unless archived_at == SKIP
      @offer_items = offer_items unless offer_items == SKIP
      @offer_discounts = offer_discounts unless offer_discounts == SKIP
      @product_family_name = product_family_name unless product_family_name == SKIP
      @product_name = product_name unless product_name == SKIP
      @product_price_point_name = product_price_point_name unless product_price_point_name == SKIP
      @product_price_in_cents = product_price_in_cents unless product_price_in_cents == SKIP
      @offer_signup_pages = offer_signup_pages unless offer_signup_pages == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      site_id = hash.key?('site_id') ? hash['site_id'] : SKIP
      product_family_id =
        hash.key?('product_family_id') ? hash['product_family_id'] : SKIP
      product_id = hash.key?('product_id') ? hash['product_id'] : SKIP
      product_price_point_id =
        hash.key?('product_price_point_id') ? hash['product_price_point_id'] : SKIP
      product_revisable_number =
        hash.key?('product_revisable_number') ? hash['product_revisable_number'] : SKIP
      name = hash.key?('name') ? hash['name'] : SKIP
      handle = hash.key?('handle') ? hash['handle'] : SKIP
      description = hash.key?('description') ? hash['description'] : SKIP
      created_at = if hash.key?('created_at')
                     (DateTimeHelper.from_rfc3339(hash['created_at']) if hash['created_at'])
                   else
                     SKIP
                   end
      updated_at = if hash.key?('updated_at')
                     (DateTimeHelper.from_rfc3339(hash['updated_at']) if hash['updated_at'])
                   else
                     SKIP
                   end
      archived_at = if hash.key?('archived_at')
                      (DateTimeHelper.from_rfc3339(hash['archived_at']) if hash['archived_at'])
                    else
                      SKIP
                    end
      # Parameter is an array, so we need to iterate through it
      offer_items = nil
      unless hash['offer_items'].nil?
        offer_items = []
        hash['offer_items'].each do |structure|
          offer_items << (OfferItem.from_hash(structure) if structure)
        end
      end

      offer_items = SKIP unless hash.key?('offer_items')
      # Parameter is an array, so we need to iterate through it
      offer_discounts = nil
      unless hash['offer_discounts'].nil?
        offer_discounts = []
        hash['offer_discounts'].each do |structure|
          offer_discounts << (OfferDiscount.from_hash(structure) if structure)
        end
      end

      offer_discounts = SKIP unless hash.key?('offer_discounts')
      product_family_name =
        hash.key?('product_family_name') ? hash['product_family_name'] : SKIP
      product_name = hash.key?('product_name') ? hash['product_name'] : SKIP
      product_price_point_name =
        hash.key?('product_price_point_name') ? hash['product_price_point_name'] : SKIP
      product_price_in_cents =
        hash.key?('product_price_in_cents') ? hash['product_price_in_cents'] : SKIP
      # Parameter is an array, so we need to iterate through it
      offer_signup_pages = nil
      unless hash['offer_signup_pages'].nil?
        offer_signup_pages = []
        hash['offer_signup_pages'].each do |structure|
          offer_signup_pages << (OfferSignupPage.from_hash(structure) if structure)
        end
      end

      offer_signup_pages = SKIP unless hash.key?('offer_signup_pages')

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      Offer.new(id: id,
                site_id: site_id,
                product_family_id: product_family_id,
                product_id: product_id,
                product_price_point_id: product_price_point_id,
                product_revisable_number: product_revisable_number,
                name: name,
                handle: handle,
                description: description,
                created_at: created_at,
                updated_at: updated_at,
                archived_at: archived_at,
                offer_items: offer_items,
                offer_discounts: offer_discounts,
                product_family_name: product_family_name,
                product_name: product_name,
                product_price_point_name: product_price_point_name,
                product_price_in_cents: product_price_in_cents,
                offer_signup_pages: offer_signup_pages,
                additional_properties: additional_properties)
    end

    def to_custom_created_at
      DateTimeHelper.to_rfc3339(created_at)
    end

    def to_custom_updated_at
      DateTimeHelper.to_rfc3339(updated_at)
    end

    def to_custom_archived_at
      DateTimeHelper.to_rfc3339(archived_at)
    end
  end
end
