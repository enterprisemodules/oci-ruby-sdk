# Copyright (c) 2016, 2021, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # The flow node can be connected to other nodes in a data flow with input and output links and is bound to an opertor which defines the semantics of the node.
  class DataIntegration::Models::FlowNode
    # The key of the object.
    # @return [String]
    attr_accessor :key

    # The type of the object.
    # @return [String]
    attr_accessor :model_type

    # The model version of an object.
    # @return [String]
    attr_accessor :model_version

    # @return [OCI::DataIntegration::Models::ParentReference]
    attr_accessor :parent_ref

    # Free form text without any restriction on permitted characters. Name can have letters, numbers, and special characters. The value is editable and is restricted to 1000 characters.
    # @return [String]
    attr_accessor :name

    # Detailed description for the object.
    # @return [String]
    attr_accessor :description

    # An array of input links.
    # @return [Array<OCI::DataIntegration::Models::InputLink>]
    attr_accessor :input_links

    # An array of output links.
    # @return [Array<OCI::DataIntegration::Models::OutputLink>]
    attr_accessor :output_links

    # @return [OCI::DataIntegration::Models::Operator]
    attr_accessor :operator

    # @return [OCI::DataIntegration::Models::UIProperties]
    attr_accessor :ui_properties

    # @return [OCI::DataIntegration::Models::ConfigProvider]
    attr_accessor :config_provider_delegate

    # The status of an object that can be set to value 1 for shallow references across objects, other values reserved.
    # @return [Integer]
    attr_accessor :object_status

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'key': :'key',
        'model_type': :'modelType',
        'model_version': :'modelVersion',
        'parent_ref': :'parentRef',
        'name': :'name',
        'description': :'description',
        'input_links': :'inputLinks',
        'output_links': :'outputLinks',
        'operator': :'operator',
        'ui_properties': :'uiProperties',
        'config_provider_delegate': :'configProviderDelegate',
        'object_status': :'objectStatus'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'key': :'String',
        'model_type': :'String',
        'model_version': :'String',
        'parent_ref': :'OCI::DataIntegration::Models::ParentReference',
        'name': :'String',
        'description': :'String',
        'input_links': :'Array<OCI::DataIntegration::Models::InputLink>',
        'output_links': :'Array<OCI::DataIntegration::Models::OutputLink>',
        'operator': :'OCI::DataIntegration::Models::Operator',
        'ui_properties': :'OCI::DataIntegration::Models::UIProperties',
        'config_provider_delegate': :'OCI::DataIntegration::Models::ConfigProvider',
        'object_status': :'Integer'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :key The value to assign to the {#key} property
    # @option attributes [String] :model_type The value to assign to the {#model_type} property
    # @option attributes [String] :model_version The value to assign to the {#model_version} property
    # @option attributes [OCI::DataIntegration::Models::ParentReference] :parent_ref The value to assign to the {#parent_ref} property
    # @option attributes [String] :name The value to assign to the {#name} property
    # @option attributes [String] :description The value to assign to the {#description} property
    # @option attributes [Array<OCI::DataIntegration::Models::InputLink>] :input_links The value to assign to the {#input_links} property
    # @option attributes [Array<OCI::DataIntegration::Models::OutputLink>] :output_links The value to assign to the {#output_links} property
    # @option attributes [OCI::DataIntegration::Models::Operator] :operator The value to assign to the {#operator} property
    # @option attributes [OCI::DataIntegration::Models::UIProperties] :ui_properties The value to assign to the {#ui_properties} property
    # @option attributes [OCI::DataIntegration::Models::ConfigProvider] :config_provider_delegate The value to assign to the {#config_provider_delegate} property
    # @option attributes [Integer] :object_status The value to assign to the {#object_status} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.key = attributes[:'key'] if attributes[:'key']

      self.model_type = attributes[:'modelType'] if attributes[:'modelType']

      raise 'You cannot provide both :modelType and :model_type' if attributes.key?(:'modelType') && attributes.key?(:'model_type')

      self.model_type = attributes[:'model_type'] if attributes[:'model_type']

      self.model_version = attributes[:'modelVersion'] if attributes[:'modelVersion']

      raise 'You cannot provide both :modelVersion and :model_version' if attributes.key?(:'modelVersion') && attributes.key?(:'model_version')

      self.model_version = attributes[:'model_version'] if attributes[:'model_version']

      self.parent_ref = attributes[:'parentRef'] if attributes[:'parentRef']

      raise 'You cannot provide both :parentRef and :parent_ref' if attributes.key?(:'parentRef') && attributes.key?(:'parent_ref')

      self.parent_ref = attributes[:'parent_ref'] if attributes[:'parent_ref']

      self.name = attributes[:'name'] if attributes[:'name']

      self.description = attributes[:'description'] if attributes[:'description']

      self.input_links = attributes[:'inputLinks'] if attributes[:'inputLinks']

      raise 'You cannot provide both :inputLinks and :input_links' if attributes.key?(:'inputLinks') && attributes.key?(:'input_links')

      self.input_links = attributes[:'input_links'] if attributes[:'input_links']

      self.output_links = attributes[:'outputLinks'] if attributes[:'outputLinks']

      raise 'You cannot provide both :outputLinks and :output_links' if attributes.key?(:'outputLinks') && attributes.key?(:'output_links')

      self.output_links = attributes[:'output_links'] if attributes[:'output_links']

      self.operator = attributes[:'operator'] if attributes[:'operator']

      self.ui_properties = attributes[:'uiProperties'] if attributes[:'uiProperties']

      raise 'You cannot provide both :uiProperties and :ui_properties' if attributes.key?(:'uiProperties') && attributes.key?(:'ui_properties')

      self.ui_properties = attributes[:'ui_properties'] if attributes[:'ui_properties']

      self.config_provider_delegate = attributes[:'configProviderDelegate'] if attributes[:'configProviderDelegate']

      raise 'You cannot provide both :configProviderDelegate and :config_provider_delegate' if attributes.key?(:'configProviderDelegate') && attributes.key?(:'config_provider_delegate')

      self.config_provider_delegate = attributes[:'config_provider_delegate'] if attributes[:'config_provider_delegate']

      self.object_status = attributes[:'objectStatus'] if attributes[:'objectStatus']

      raise 'You cannot provide both :objectStatus and :object_status' if attributes.key?(:'objectStatus') && attributes.key?(:'object_status')

      self.object_status = attributes[:'object_status'] if attributes[:'object_status']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        key == other.key &&
        model_type == other.model_type &&
        model_version == other.model_version &&
        parent_ref == other.parent_ref &&
        name == other.name &&
        description == other.description &&
        input_links == other.input_links &&
        output_links == other.output_links &&
        operator == other.operator &&
        ui_properties == other.ui_properties &&
        config_provider_delegate == other.config_provider_delegate &&
        object_status == other.object_status
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines

    # @see the `==` method
    # @param [Object] other the other object to be compared
    def eql?(other)
      self == other
    end

    # rubocop:disable Metrics/AbcSize, Layout/EmptyLines


    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [key, model_type, model_version, parent_ref, name, description, input_links, output_links, operator, ui_properties, config_provider_delegate, object_status].hash
    end
    # rubocop:enable Metrics/AbcSize, Layout/EmptyLines

    # rubocop:disable Metrics/AbcSize, Layout/EmptyLines


    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)

      self.class.swagger_types.each_pair do |key, type|
        if type =~ /^Array<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            public_method("#{key}=").call(
              attributes[self.class.attribute_map[key]]
                .map { |v| OCI::Internal::Util.convert_to_type(Regexp.last_match(1), v) }
            )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          public_method("#{key}=").call(
            OCI::Internal::Util.convert_to_type(type, attributes[self.class.attribute_map[key]])
          )
        end
        # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end
    # rubocop:enable Metrics/AbcSize, Layout/EmptyLines

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = public_method(attr).call
        next if value.nil? && !instance_variable_defined?("@#{attr}")

        hash[param] = _to_hash(value)
      end
      hash
    end

    private

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
# rubocop:enable Lint/UnneededCopDisableDirective, Metrics/LineLength