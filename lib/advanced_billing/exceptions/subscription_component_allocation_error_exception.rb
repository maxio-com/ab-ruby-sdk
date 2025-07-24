# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Subscription Component Allocation Error class.
  class SubscriptionComponentAllocationErrorException < APIException
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Array[SubscriptionComponentAllocationErrorItem]]
    attr_accessor :errors

    # The constructor.
    # @param [String] reason The reason for raising an exception.
    # @param [HttpResponse] response The HttpReponse of the API call.
    def initialize(reason, response)
      super(reason, response)
      hash = APIHelper.json_deserialize(@response.raw_body)
      unbox(hash)
    end

    # Populates this object by extracting properties from a hash.
    # @param [Hash] hash The deserialized response sent by the server in the
    # response body.
    def unbox(hash)
      return nil unless hash

      # Parameter is an array, so we need to iterate through it
      @errors = nil
      unless hash['errors'].nil?
        @errors = []
        hash['errors'].each do |structure|
          @errors << (SubscriptionComponentAllocationErrorItem.from_hash(structure) if structure)
        end
      end

      @errors = SKIP unless hash.key?('errors')
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} errors: #{@errors}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} errors: #{@errors.inspect}>"
    end
  end
end
