# maxio_advanced_billing_formerly_chargify_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MaxioAdvancedBillingFormerlyChargifyApi
  # Utility class for basic authorization.
  class BasicAuth < CoreLibrary::HeaderAuth
    # Display error message on occurrence of authentication failure in CustomAuthentication.
    # @returns [String] The oAuth error message.
    def error_message
      'BasicAuth: basic_auth_user_name or basic_auth_password is undefined.'
    end

    # Initialization constructor.
    def initialize(basic_auth_user_name, basic_auth_password)
      auth_params = {}
      unless basic_auth_user_name.nil? || basic_auth_password.nil?
        auth_params['Authorization'] =
          "Basic #{AuthHelper.get_base64_encoded_value(basic_auth_user_name, basic_auth_password)}"
      end

      super auth_params

      @_basic_auth_user_name = basic_auth_user_name
      @_basic_auth_password = basic_auth_password
    end
  end
end
