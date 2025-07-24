# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Base model.
  # rubocop:disable all
  class BaseModel < CoreLibrary::BaseModel
    # Returns a Hash representation of the current object.
    def to_hash
      # validating the model being serialized
      self.class.validate(self) if self.class.respond_to?(:validate)

      hash = {}
      instance_variables.each do |name|
        value = instance_variable_get(name)
        name = name[1..]
        if name == 'additional_properties'
          additional_properties = process_additional_properties(value, self.class.names)
          hash.merge!(additional_properties)
        else
          key = self.class.names.key?(name) ? self.class.names[name] : name
          optional_fields = self.class.optionals
          nullable_fields = self.class.nullables
          if value.nil?
            next unless nullable_fields.include?(name)

            if !optional_fields.include?(name) && !nullable_fields.include?(name)
              raise ArgumentError,
                    "`#{name}` cannot be nil in `#{self.class}`. Please specify a valid value."
            end
          end

          hash[key] = nil
          unless value.nil?
            if respond_to?("to_custom_#{name}")
              if (value.instance_of? Array) || (value.instance_of? Hash)
                params = [hash, key]
                hash[key] = send("to_custom_#{name}", *params)
              else
                hash[key] = send("to_custom_#{name}")
              end
            elsif respond_to?("to_union_type_#{name}")
              hash[key] = send("to_union_type_#{name}")
            elsif value.instance_of? Array
              hash[key] = value.map { |v| v.is_a?(BaseModel) ? v.to_hash : v }
            elsif value.instance_of? Hash
              hash[key] = {}
              value.each do |k, v|
                hash[key][k] = v.is_a?(BaseModel) ? v.to_hash : v
              end
            else
              hash[key] = value.is_a?(BaseModel) ? value.to_hash : value
            end
          end
        end
      end
      hash
    end

    # Processes additional properties, ensuring no conflicts with existing properties.
    def process_additional_properties(additional_properties, existing_prop_names)
      hash = {}
      additional_properties.each do |name, value|
        check_for_conflict(name, existing_prop_names)

        hash[name] = if value.is_a?(Array)
                       process_array(value)
                     elsif value.is_a?(Hash)
                       process_hash(value)
                     else
                       process_basic_value(value)
                     end
      end
      hash
    end

    # Checks if an additional property conflicts with a model's existing property.
    def check_for_conflict(name, existing_prop_names)
      return unless existing_prop_names.key?(name)

      raise ArgumentError, "An additional property key, '#{name}' conflicts with one of the model's properties"
    end

    # Processes an array of values, recursively calling `to_hash` on BaseModel objects.
    def process_array(value)
      value.map { |v| v.is_a?(BaseModel) ? v.to_hash : v }
    end

    # Processes a hash of values, recursively calling `to_hash` on BaseModel objects.
    def process_hash(value)
      value.transform_values do |v|
        v.is_a?(BaseModel) ? v.to_hash : v
      end
    end

    # Processes a basic value (non-array, non-hash).
    def process_basic_value(value)
      value.is_a?(BaseModel) ? value.to_hash : value
    end

    # Returns a JSON representation of the curent object.
    def to_json(options = {})
      hash = to_hash
      hash.to_json(options)
    end

    def get_additional_properties      
      # Collect all additional properties
      additional_props = instance_variables.each_with_object({}) do |var, hash|
        var_name = var.to_s.delete('@').to_sym
        if !self.class.names.key?(var_name.to_s)
          hash[var_name] = instance_variable_get(var)
        end
      end

      additional_props
    end
  end
  # rubocop:enable all
end
