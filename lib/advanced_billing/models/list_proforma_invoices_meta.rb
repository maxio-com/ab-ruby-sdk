# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # ListProformaInvoicesMeta Model.
  class ListProformaInvoicesMeta < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :total_count

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :current_page

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :total_pages

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :status_code

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['total_count'] = 'total_count'
      @_hash['current_page'] = 'current_page'
      @_hash['total_pages'] = 'total_pages'
      @_hash['status_code'] = 'status_code'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        total_count
        current_page
        total_pages
        status_code
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(total_count: SKIP, current_page: SKIP, total_pages: SKIP,
                   status_code: SKIP, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @total_count = total_count unless total_count == SKIP
      @current_page = current_page unless current_page == SKIP
      @total_pages = total_pages unless total_pages == SKIP
      @status_code = status_code unless status_code == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      total_count = hash.key?('total_count') ? hash['total_count'] : SKIP
      current_page = hash.key?('current_page') ? hash['current_page'] : SKIP
      total_pages = hash.key?('total_pages') ? hash['total_pages'] : SKIP
      status_code = hash.key?('status_code') ? hash['status_code'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      ListProformaInvoicesMeta.new(total_count: total_count,
                                   current_page: current_page,
                                   total_pages: total_pages,
                                   status_code: status_code,
                                   additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} total_count: #{@total_count}, current_page: #{@current_page}, total_pages:"\
      " #{@total_pages}, status_code: #{@status_code}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} total_count: #{@total_count.inspect}, current_page:"\
      " #{@current_page.inspect}, total_pages: #{@total_pages.inspect}, status_code:"\
      " #{@status_code.inspect}, additional_properties: #{get_additional_properties}>"
    end
  end
end
