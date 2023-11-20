# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # BatchJobResponse Model.
  class BatchJobResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [BatchJob]
    attr_accessor :batchjob

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['batchjob'] = 'batchjob'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      []
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(batchjob = nil)
      @batchjob = batchjob
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      batchjob = BatchJob.from_hash(hash['batchjob']) if hash['batchjob']

      # Create object from extracted values.
      BatchJobResponse.new(batchjob)
    end
  end
end
