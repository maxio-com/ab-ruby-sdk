# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # A utility to allow users to set the content-type for files
  class FileWrapper < CoreLibrary::FileWrapper
    # The constructor.
    # @param [File] file The file to be sent in the request.
    # @param [string] content_type The content type of the provided file.
    def initialize(file, content_type: 'application/octet-stream')
      super
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} file: #{@file}, content_type: #{@content_type}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def to_inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} file: #{@file.inspect}, content_type: #{@content_type.inspect}>"
    end
  end
end
