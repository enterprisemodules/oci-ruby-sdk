# Copyright (c) 2016, 2021, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # The data flow type contains the audit summary information and the definition of the data flow.
  class DataIntegration::Models::DataFlow
    # Generated key that can be used in API calls to identify data flow. On scenarios where reference to the data flow is needed, a value can be passed in create.
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

    # Value can only contain upper case letters, underscore, and numbers. It should begin with upper case letter or underscore. The value can be modified.
    # @return [String]
    attr_accessor :identifier

    # The version of the object that is used to track changes in the object instance.
    # @return [Integer]
    attr_accessor :object_version

    # An array of nodes.
    # @return [Array<OCI::DataIntegration::Models::FlowNode>]
    attr_accessor :nodes

    # An array of parameters.
    # @return [Array<OCI::DataIntegration::Models::Parameter>]
    attr_accessor :parameters

    # Detailed description for the object.
    # @return [String]
    attr_accessor :description

    # @return [OCI::DataIntegration::Models::ConfigValues]
    attr_accessor :flow_config_values

    # The status of an object that can be set to value 1 for shallow references across objects, other values reserved.
    # @return [Integer]
    attr_accessor :object_status

    # @return [OCI::DataIntegration::Models::ObjectMetadata]
    attr_accessor :metadata

    # A key map. If provided, key is replaced with generated key. This structure provides mapping between user provided key and generated key.
    # @return [Hash<String, String>]
    attr_accessor :key_map

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'key': :'key',
        'model_type': :'modelType',
        'model_version': :'modelVersion',
        'parent_ref': :'parentRef',
        'name': :'name',
        'identifier': :'identifier',
        'object_version': :'objectVersion',
        'nodes': :'nodes',
        'parameters': :'parameters',
        'description': :'description',
        'flow_config_values': :'flowConfigValues',
        'object_status': :'objectStatus',
        'metadata': :'metadata',
        'key_map': :'keyMap'
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
        'identifier': :'String',
        'object_version': :'Integer',
        'nodes': :'Array<OCI::DataIntegration::Models::FlowNode>',
        'parameters': :'Array<OCI::DataIntegration::Models::Parameter>',
        'description': :'String',
        'flow_config_values': :'OCI::DataIntegration::Models::ConfigValues',
        'object_status': :'Integer',
        'metadata': :'OCI::DataIntegration::Models::ObjectMetadata',
        'key_map': :'Hash<String, String>'
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
    # @option attributes [String] :identifier The value to assign to the {#identifier} property
    # @option attributes [Integer] :object_version The value to assign to the {#object_version} property
    # @option attributes [Array<OCI::DataIntegration::Models::FlowNode>] :nodes The value to assign to the {#nodes} property
    # @option attributes [Array<OCI::DataIntegration::Models::Parameter>] :parameters The value to assign to the {#parameters} property
    # @option attributes [String] :description The value to assign to the {#description} property
    # @option attributes [OCI::DataIntegration::Models::ConfigValues] :flow_config_values The value to assign to the {#flow_config_values} property
    # @option attributes [Integer] :object_status The value to assign to the {#object_status} property
    # @option attributes [OCI::DataIntegration::Models::ObjectMetadata] :metadata The value to assign to the {#metadata} property
    # @option attributes [Hash<String, String>] :key_map The value to assign to the {#key_map} property
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

      self.identifier = attributes[:'identifier'] if attributes[:'identifier']

      self.object_version = attributes[:'objectVersion'] if attributes[:'objectVersion']

      raise 'You cannot provide both :objectVersion and :object_version' if attributes.key?(:'objectVersion') && attributes.key?(:'object_version')

      self.object_version = attributes[:'object_version'] if attributes[:'object_version']

      self.nodes = attributes[:'nodes'] if attributes[:'nodes']

      self.parameters = attributes[:'parameters'] if attributes[:'parameters']

      self.description = attributes[:'description'] if attributes[:'description']

      self.flow_config_values = attributes[:'flowConfigValues'] if attributes[:'flowConfigValues']

      raise 'You cannot provide both :flowConfigValues and :flow_config_values' if attributes.key?(:'flowConfigValues') && attributes.key?(:'flow_config_values')

      self.flow_config_values = attributes[:'flow_config_values'] if attributes[:'flow_config_values']

      self.object_status = attributes[:'objectStatus'] if attributes[:'objectStatus']

      raise 'You cannot provide both :objectStatus and :object_status' if attributes.key?(:'objectStatus') && attributes.key?(:'object_status')

      self.object_status = attributes[:'object_status'] if attributes[:'object_status']

      self.metadata = attributes[:'metadata'] if attributes[:'metadata']

      self.key_map = attributes[:'keyMap'] if attributes[:'keyMap']

      raise 'You cannot provide both :keyMap and :key_map' if attributes.key?(:'keyMap') && attributes.key?(:'key_map')

      self.key_map = attributes[:'key_map'] if attributes[:'key_map']
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
        identifier == other.identifier &&
        object_version == other.object_version &&
        nodes == other.nodes &&
        parameters == other.parameters &&
        description == other.description &&
        flow_config_values == other.flow_config_values &&
        object_status == other.object_status &&
        metadata == other.metadata &&
        key_map == other.key_map
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
      [key, model_type, model_version, parent_ref, name, identifier, object_version, nodes, parameters, description, flow_config_values, object_status, metadata, key_map].hash
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