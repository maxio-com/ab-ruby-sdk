# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Class for exceptions when there is a network error, status code error, etc.
  class APIException < CoreLibrary::ApiException
    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} status_code: #{@response_code}, reason: #{@reason}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} status_code: #{@response_code.inspect}, reason: #{@reason.inspect}>"
    end
  end
end
