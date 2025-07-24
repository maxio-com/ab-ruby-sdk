# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Event Based Billing Segment Errors class.
  class EventBasedBillingSegmentErrorsException < APIException
    SKIP = Object.new
    private_constant :SKIP

    # The key of the object would be a number (an index in the request array)
    # where the error occurred. In the value object, the key represents the
    # field and the value is an array with error messages. In most cases, this
    # object would contain just one key.
    # @return [Hash[String, Object]]
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

      @errors = hash.key?('errors') ? hash['errors'] : SKIP
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
