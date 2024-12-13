# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # InvoiceIssued Model.
  class InvoiceIssued < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :uid

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :number

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :role

    # TODO: Write general description for this method
    # @return [Date]
    attr_accessor :due_date

    # Invoice issue date. Can be an empty string if value is missing.
    # @return [String]
    attr_accessor :issue_date

    # Paid date. Can be an empty string if value is missing.
    # @return [String]
    attr_accessor :paid_date

    # Paid date. Can be an empty string if value is missing.
    # @return [String]
    attr_accessor :due_amount

    # Paid date. Can be an empty string if value is missing.
    # @return [String]
    attr_accessor :paid_amount

    # Paid date. Can be an empty string if value is missing.
    # @return [String]
    attr_accessor :tax_amount

    # Paid date. Can be an empty string if value is missing.
    # @return [String]
    attr_accessor :refund_amount

    # Paid date. Can be an empty string if value is missing.
    # @return [String]
    attr_accessor :total_amount

    # Paid date. Can be an empty string if value is missing.
    # @return [String]
    attr_accessor :status_amount

    # Paid date. Can be an empty string if value is missing.
    # @return [String]
    attr_accessor :product_name

    # Paid date. Can be an empty string if value is missing.
    # @return [String]
    attr_accessor :consolidation_level

    # Paid date. Can be an empty string if value is missing.
    # @return [Array[InvoiceLineItemEventData]]
    attr_accessor :line_items

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['uid'] = 'uid'
      @_hash['number'] = 'number'
      @_hash['role'] = 'role'
      @_hash['due_date'] = 'due_date'
      @_hash['issue_date'] = 'issue_date'
      @_hash['paid_date'] = 'paid_date'
      @_hash['due_amount'] = 'due_amount'
      @_hash['paid_amount'] = 'paid_amount'
      @_hash['tax_amount'] = 'tax_amount'
      @_hash['refund_amount'] = 'refund_amount'
      @_hash['total_amount'] = 'total_amount'
      @_hash['status_amount'] = 'status_amount'
      @_hash['product_name'] = 'product_name'
      @_hash['consolidation_level'] = 'consolidation_level'
      @_hash['line_items'] = 'line_items'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      []
    end

    # An array for nullable fields
    def self.nullables
      %w[
        due_date
      ]
    end

    def initialize(uid:, number:, role:, due_date:, issue_date:, paid_date:,
                   due_amount:, paid_amount:, tax_amount:, refund_amount:,
                   total_amount:, status_amount:, product_name:,
                   consolidation_level:, line_items:,
                   additional_properties : {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @uid = uid
      @number = number
      @role = role
      @due_date = due_date
      @issue_date = issue_date
      @paid_date = paid_date
      @due_amount = due_amount
      @paid_amount = paid_amount
      @tax_amount = tax_amount
      @refund_amount = refund_amount
      @total_amount = total_amount
      @status_amount = status_amount
      @product_name = product_name
      @consolidation_level = consolidation_level
      @line_items = line_items
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      uid = hash.key?('uid') ? hash['uid'] : nil
      number = hash.key?('number') ? hash['number'] : nil
      role = hash.key?('role') ? hash['role'] : nil
      due_date = hash.key?('due_date') ? hash['due_date'] : nil
      issue_date = hash.key?('issue_date') ? hash['issue_date'] : nil
      paid_date = hash.key?('paid_date') ? hash['paid_date'] : nil
      due_amount = hash.key?('due_amount') ? hash['due_amount'] : nil
      paid_amount = hash.key?('paid_amount') ? hash['paid_amount'] : nil
      tax_amount = hash.key?('tax_amount') ? hash['tax_amount'] : nil
      refund_amount = hash.key?('refund_amount') ? hash['refund_amount'] : nil
      total_amount = hash.key?('total_amount') ? hash['total_amount'] : nil
      status_amount = hash.key?('status_amount') ? hash['status_amount'] : nil
      product_name = hash.key?('product_name') ? hash['product_name'] : nil
      consolidation_level =
        hash.key?('consolidation_level') ? hash['consolidation_level'] : nil
      # Parameter is an array, so we need to iterate through it
      line_items = nil
      unless hash['line_items'].nil?
        line_items = []
        hash['line_items'].each do |structure|
          line_items << (InvoiceLineItemEventData.from_hash(structure) if structure)
        end
      end

      line_items = nil unless hash.key?('line_items')

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      InvoiceIssued.new(uid: uid,
                        number: number,
                        role: role,
                        due_date: due_date,
                        issue_date: issue_date,
                        paid_date: paid_date,
                        due_amount: due_amount,
                        paid_amount: paid_amount,
                        tax_amount: tax_amount,
                        refund_amount: refund_amount,
                        total_amount: total_amount,
                        status_amount: status_amount,
                        product_name: product_name,
                        consolidation_level: consolidation_level,
                        line_items: line_items,
                        additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [InvoiceIssued | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return (
          APIHelper.valid_type?(value.uid,
                                ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.number,
                                  ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.role,
                                  ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.due_date,
                                  ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.issue_date,
                                  ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.paid_date,
                                  ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.due_amount,
                                  ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.paid_amount,
                                  ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.tax_amount,
                                  ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.refund_amount,
                                  ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.total_amount,
                                  ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.status_amount,
                                  ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.product_name,
                                  ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.consolidation_level,
                                  ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.line_items,
                                  ->(val) { InvoiceLineItemEventData.validate(val) },
                                  is_model_hash: true,
                                  is_inner_model_hash: true)
        )
      end

      return false unless value.instance_of? Hash

      (
        APIHelper.valid_type?(value['uid'],
                              ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['number'],
                                ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['role'],
                                ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['due_date'],
                                ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['issue_date'],
                                ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['paid_date'],
                                ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['due_amount'],
                                ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['paid_amount'],
                                ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['tax_amount'],
                                ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['refund_amount'],
                                ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['total_amount'],
                                ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['status_amount'],
                                ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['product_name'],
                                ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['consolidation_level'],
                                ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['line_items'],
                                ->(val) { InvoiceLineItemEventData.validate(val) },
                                is_model_hash: true,
                                is_inner_model_hash: true)
      )
    end
  end
end
