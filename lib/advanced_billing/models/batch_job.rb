# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module AdvancedBilling
  # BatchJob Model.
  class BatchJob < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :id

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :finished_at

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :row_count

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :created_at

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :completed

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['finished_at'] = 'finished_at'
      @_hash['row_count'] = 'row_count'
      @_hash['created_at'] = 'created_at'
      @_hash['completed'] = 'completed'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        finished_at
        row_count
        created_at
        completed
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        finished_at
        row_count
        created_at
      ]
    end

    def initialize(id: SKIP, finished_at: SKIP, row_count: SKIP,
                   created_at: SKIP, completed: SKIP, additional_properties: {})
      @id = id unless id == SKIP
      @finished_at = finished_at unless finished_at == SKIP
      @row_count = row_count unless row_count == SKIP
      @created_at = created_at unless created_at == SKIP
      @completed = completed unless completed == SKIP

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      finished_at = if hash.key?('finished_at')
                      (DateTimeHelper.from_rfc3339(hash['finished_at']) if hash['finished_at'])
                    else
                      SKIP
                    end
      row_count = hash.key?('row_count') ? hash['row_count'] : SKIP
      created_at = if hash.key?('created_at')
                     (DateTimeHelper.from_rfc3339(hash['created_at']) if hash['created_at'])
                   else
                     SKIP
                   end
      completed = hash.key?('completed') ? hash['completed'] : SKIP

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      BatchJob.new(id: id,
                   finished_at: finished_at,
                   row_count: row_count,
                   created_at: created_at,
                   completed: completed,
                   additional_properties: hash)
    end

    def to_custom_finished_at
      DateTimeHelper.to_rfc3339(finished_at)
    end

    def to_custom_created_at
      DateTimeHelper.to_rfc3339(created_at)
    end
  end
end
