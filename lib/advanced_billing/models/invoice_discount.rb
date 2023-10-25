# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # InvoiceDiscount Model.
  class InvoiceDiscount < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :uid

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :title

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :description

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :code

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :source_type

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :source_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :discount_type

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :percentage

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :eligible_amount

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :discount_amount

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :transaction_id

    # TODO: Write general description for this method
    # @return [Array[InvoiceDiscountBreakout]]
    attr_accessor :line_item_breakouts

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['uid'] = 'uid'
      @_hash['title'] = 'title'
      @_hash['description'] = 'description'
      @_hash['code'] = 'code'
      @_hash['source_type'] = 'source_type'
      @_hash['source_id'] = 'source_id'
      @_hash['discount_type'] = 'discount_type'
      @_hash['percentage'] = 'percentage'
      @_hash['eligible_amount'] = 'eligible_amount'
      @_hash['discount_amount'] = 'discount_amount'
      @_hash['transaction_id'] = 'transaction_id'
      @_hash['line_item_breakouts'] = 'line_item_breakouts'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        uid
        title
        description
        code
        source_type
        source_id
        discount_type
        percentage
        eligible_amount
        discount_amount
        transaction_id
        line_item_breakouts
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        description
      ]
    end

    def initialize(uid = SKIP,
                   title = SKIP,
                   description = SKIP,
                   code = SKIP,
                   source_type = SKIP,
                   source_id = SKIP,
                   discount_type = SKIP,
                   percentage = SKIP,
                   eligible_amount = SKIP,
                   discount_amount = SKIP,
                   transaction_id = SKIP,
                   line_item_breakouts = SKIP)
      @uid = uid unless uid == SKIP
      @title = title unless title == SKIP
      @description = description unless description == SKIP
      @code = code unless code == SKIP
      @source_type = source_type unless source_type == SKIP
      @source_id = source_id unless source_id == SKIP
      @discount_type = discount_type unless discount_type == SKIP
      @percentage = percentage unless percentage == SKIP
      @eligible_amount = eligible_amount unless eligible_amount == SKIP
      @discount_amount = discount_amount unless discount_amount == SKIP
      @transaction_id = transaction_id unless transaction_id == SKIP
      @line_item_breakouts = line_item_breakouts unless line_item_breakouts == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      uid = hash.key?('uid') ? hash['uid'] : SKIP
      title = hash.key?('title') ? hash['title'] : SKIP
      description = hash.key?('description') ? hash['description'] : SKIP
      code = hash.key?('code') ? hash['code'] : SKIP
      source_type = hash.key?('source_type') ? hash['source_type'] : SKIP
      source_id = hash.key?('source_id') ? hash['source_id'] : SKIP
      discount_type = hash.key?('discount_type') ? hash['discount_type'] : SKIP
      percentage = hash.key?('percentage') ? hash['percentage'] : SKIP
      eligible_amount =
        hash.key?('eligible_amount') ? hash['eligible_amount'] : SKIP
      discount_amount =
        hash.key?('discount_amount') ? hash['discount_amount'] : SKIP
      transaction_id =
        hash.key?('transaction_id') ? hash['transaction_id'] : SKIP
      # Parameter is an array, so we need to iterate through it
      line_item_breakouts = nil
      unless hash['line_item_breakouts'].nil?
        line_item_breakouts = []
        hash['line_item_breakouts'].each do |structure|
          line_item_breakouts << (InvoiceDiscountBreakout.from_hash(structure) if structure)
        end
      end

      line_item_breakouts = SKIP unless hash.key?('line_item_breakouts')

      # Create object from extracted values.
      InvoiceDiscount.new(uid,
                          title,
                          description,
                          code,
                          source_type,
                          source_id,
                          discount_type,
                          percentage,
                          eligible_amount,
                          discount_amount,
                          transaction_id,
                          line_item_breakouts)
    end
  end
end
