# maxio_advanced_billing_formerly_chargify_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MaxioAdvancedBillingFormerlyChargifyApi
  # Warning: When updating a metafield's scope attribute, all scope attributes
  # must be passed. Partially complete scope attributes will override the
  # existing settings.
  class MetafieldScope < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Include (1) or exclude (0) metafields from the csv export.
    # @return [IncludeOptionEnum]
    attr_accessor :csv

    # Include (1) or exclude (0) metafields from invoices.
    # @return [IncludeOptionEnum]
    attr_accessor :invoices

    # Include (1) or exclude (0) metafields from statements.
    # @return [IncludeOptionEnum]
    attr_accessor :statements

    # Include (1) or exclude (0) metafields from the portal.
    # @return [IncludeOptionEnum]
    attr_accessor :portal

    # Include (1) or exclude (0) metafields from being viewable by your
    # ecosystem.
    # @return [IncludeOptionEnum]
    attr_accessor :public_show

    # Include (1) or exclude (0) metafields from being edited by your ecosystem.
    # @return [IncludeOptionEnum]
    attr_accessor :public_edit

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['csv'] = 'csv'
      @_hash['invoices'] = 'invoices'
      @_hash['statements'] = 'statements'
      @_hash['portal'] = 'portal'
      @_hash['public_show'] = 'public_show'
      @_hash['public_edit'] = 'public_edit'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        csv
        invoices
        statements
        portal
        public_show
        public_edit
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(csv = SKIP,
                   invoices = SKIP,
                   statements = SKIP,
                   portal = SKIP,
                   public_show = SKIP,
                   public_edit = SKIP)
      @csv = csv unless csv == SKIP
      @invoices = invoices unless invoices == SKIP
      @statements = statements unless statements == SKIP
      @portal = portal unless portal == SKIP
      @public_show = public_show unless public_show == SKIP
      @public_edit = public_edit unless public_edit == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      csv = hash.key?('csv') ? hash['csv'] : SKIP
      invoices = hash.key?('invoices') ? hash['invoices'] : SKIP
      statements = hash.key?('statements') ? hash['statements'] : SKIP
      portal = hash.key?('portal') ? hash['portal'] : SKIP
      public_show = hash.key?('public_show') ? hash['public_show'] : SKIP
      public_edit = hash.key?('public_edit') ? hash['public_edit'] : SKIP

      # Create object from extracted values.
      MetafieldScope.new(csv,
                         invoices,
                         statements,
                         portal,
                         public_show,
                         public_edit)
    end
  end
end
