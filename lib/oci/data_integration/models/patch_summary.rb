# Copyright (c) 2016, 2021, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # The patch summary type contains the audit summary information and the definition of the patch.
  class DataIntegration::Models::PatchSummary
    PATCH_TYPE_ENUM = [
      PATCH_TYPE_PUBLISH = 'PUBLISH'.freeze,
      PATCH_TYPE_REFRESH = 'REFRESH'.freeze,
      PATCH_TYPE_UNPUBLISH = 'UNPUBLISH'.freeze,
      PATCH_TYPE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    PATCH_STATUS_ENUM = [
      PATCH_STATUS_QUEUED = 'QUEUED'.freeze,
      PATCH_STATUS_SUCCESSFUL = 'SUCCESSFUL'.freeze,
      PATCH_STATUS_FAILED = 'FAILED'.freeze,
      PATCH_STATUS_IN_PROGRESS = 'IN_PROGRESS'.freeze,
      PATCH_STATUS_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # The object key.
    # @return [String]
    attr_accessor :key

    # The object type.
    # @return [String]
    attr_accessor :model_type

    # The object's model version.
    # @return [String]
    attr_accessor :model_version

    # Free form text without any restriction on permitted characters. Name can have letters, numbers, and special characters. The value is editable and is restricted to 1000 characters.
    # @return [String]
    attr_accessor :name

    # Detailed description for the object.
    # @return [String]
    attr_accessor :description

    # The version of the object that is used to track changes in the object instance.
    # @return [Integer]
    attr_accessor :object_version

    # The status of an object that can be set to value 1 for shallow references across objects, other values reserved.
    # @return [Integer]
    attr_accessor :object_status

    # Value can only contain upper case letters, underscore, and numbers. It should begin with upper case letter or underscore. The value can be modified.
    # @return [String]
    attr_accessor :identifier

    # The date and time the patch was applied, in the timestamp format defined by [RFC3339](https://tools.ietf.org/html/rfc3339).
    # @return [DateTime]
    attr_accessor :time_patched

    # The errors encountered while applying the patch, if any.
    # @return [Hash<String, String>]
    attr_accessor :error_messages

    # The application version of the patch.
    # @return [Integer]
    attr_accessor :application_version

    # The type of the patch applied or being applied on the application.
    # @return [String]
    attr_reader :patch_type

    # Status of the patch applied or being applied on the application
    # @return [String]
    attr_reader :patch_status

    # List of dependent objects in this patch.
    # @return [Array<OCI::DataIntegration::Models::PatchObjectMetadata>]
    attr_accessor :dependent_object_metadata

    # List of objects that are published or unpublished in this patch.
    # @return [Array<OCI::DataIntegration::Models::PatchObjectMetadata>]
    attr_accessor :patch_object_metadata

    # @return [OCI::DataIntegration::Models::ParentReference]
    attr_accessor :parent_ref

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
        'name': :'name',
        'description': :'description',
        'object_version': :'objectVersion',
        'object_status': :'objectStatus',
        'identifier': :'identifier',
        'time_patched': :'timePatched',
        'error_messages': :'errorMessages',
        'application_version': :'applicationVersion',
        'patch_type': :'patchType',
        'patch_status': :'patchStatus',
        'dependent_object_metadata': :'dependentObjectMetadata',
        'patch_object_metadata': :'patchObjectMetadata',
        'parent_ref': :'parentRef',
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
        'name': :'String',
        'description': :'String',
        'object_version': :'Integer',
        'object_status': :'Integer',
        'identifier': :'String',
        'time_patched': :'DateTime',
        'error_messages': :'Hash<String, String>',
        'application_version': :'Integer',
        'patch_type': :'String',
        'patch_status': :'String',
        'dependent_object_metadata': :'Array<OCI::DataIntegration::Models::PatchObjectMetadata>',
        'patch_object_metadata': :'Array<OCI::DataIntegration::Models::PatchObjectMetadata>',
        'parent_ref': :'OCI::DataIntegration::Models::ParentReference',
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
    # @option attributes [String] :name The value to assign to the {#name} property
    # @option attributes [String] :description The value to assign to the {#description} property
    # @option attributes [Integer] :object_version The value to assign to the {#object_version} property
    # @option attributes [Integer] :object_status The value to assign to the {#object_status} property
    # @option attributes [String] :identifier The value to assign to the {#identifier} property
    # @option attributes [DateTime] :time_patched The value to assign to the {#time_patched} property
    # @option attributes [Hash<String, String>] :error_messages The value to assign to the {#error_messages} property
    # @option attributes [Integer] :application_version The value to assign to the {#application_version} property
    # @option attributes [String] :patch_type The value to assign to the {#patch_type} property
    # @option attributes [String] :patch_status The value to assign to the {#patch_status} property
    # @option attributes [Array<OCI::DataIntegration::Models::PatchObjectMetadata>] :dependent_object_metadata The value to assign to the {#dependent_object_metadata} property
    # @option attributes [Array<OCI::DataIntegration::Models::PatchObjectMetadata>] :patch_object_metadata The value to assign to the {#patch_object_metadata} property
    # @option attributes [OCI::DataIntegration::Models::ParentReference] :parent_ref The value to assign to the {#parent_ref} property
    # @option attributes [OCI::DataIntegration::Models::ObjectMetadata] :metadata The value to assign to the {#metadata} property
    # @option attributes [Hash<String, String>] :key_map The value to assign to the {#key_map} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      self.key = attributes[:'key'] if attributes[:'key']

      self.model_type = attributes[:'modelType'] if attributes[:'modelType']

      raise 'You cannot provide both :modelType and :model_type' if attributes.key?(:'modelType') && attributes.key?(:'model_type')

      self.model_type = attributes[:'model_type'] if attributes[:'model_type']

      self.model_version = attributes[:'modelVersion'] if attributes[:'modelVersion']

      raise 'You cannot provide both :modelVersion and :model_version' if attributes.key?(:'modelVersion') && attributes.key?(:'model_version')

      self.model_version = attributes[:'model_version'] if attributes[:'model_version']

      self.name = attributes[:'name'] if attributes[:'name']

      self.description = attributes[:'description'] if attributes[:'description']

      self.object_version = attributes[:'objectVersion'] if attributes[:'objectVersion']

      raise 'You cannot provide both :objectVersion and :object_version' if attributes.key?(:'objectVersion') && attributes.key?(:'object_version')

      self.object_version = attributes[:'object_version'] if attributes[:'object_version']

      self.object_status = attributes[:'objectStatus'] if attributes[:'objectStatus']

      raise 'You cannot provide both :objectStatus and :object_status' if attributes.key?(:'objectStatus') && attributes.key?(:'object_status')

      self.object_status = attributes[:'object_status'] if attributes[:'object_status']

      self.identifier = attributes[:'identifier'] if attributes[:'identifier']

      self.time_patched = attributes[:'timePatched'] if attributes[:'timePatched']

      raise 'You cannot provide both :timePatched and :time_patched' if attributes.key?(:'timePatched') && attributes.key?(:'time_patched')

      self.time_patched = attributes[:'time_patched'] if attributes[:'time_patched']

      self.error_messages = attributes[:'errorMessages'] if attributes[:'errorMessages']

      raise 'You cannot provide both :errorMessages and :error_messages' if attributes.key?(:'errorMessages') && attributes.key?(:'error_messages')

      self.error_messages = attributes[:'error_messages'] if attributes[:'error_messages']

      self.application_version = attributes[:'applicationVersion'] if attributes[:'applicationVersion']

      raise 'You cannot provide both :applicationVersion and :application_version' if attributes.key?(:'applicationVersion') && attributes.key?(:'application_version')

      self.application_version = attributes[:'application_version'] if attributes[:'application_version']

      self.patch_type = attributes[:'patchType'] if attributes[:'patchType']

      raise 'You cannot provide both :patchType and :patch_type' if attributes.key?(:'patchType') && attributes.key?(:'patch_type')

      self.patch_type = attributes[:'patch_type'] if attributes[:'patch_type']

      self.patch_status = attributes[:'patchStatus'] if attributes[:'patchStatus']

      raise 'You cannot provide both :patchStatus and :patch_status' if attributes.key?(:'patchStatus') && attributes.key?(:'patch_status')

      self.patch_status = attributes[:'patch_status'] if attributes[:'patch_status']

      self.dependent_object_metadata = attributes[:'dependentObjectMetadata'] if attributes[:'dependentObjectMetadata']

      raise 'You cannot provide both :dependentObjectMetadata and :dependent_object_metadata' if attributes.key?(:'dependentObjectMetadata') && attributes.key?(:'dependent_object_metadata')

      self.dependent_object_metadata = attributes[:'dependent_object_metadata'] if attributes[:'dependent_object_metadata']

      self.patch_object_metadata = attributes[:'patchObjectMetadata'] if attributes[:'patchObjectMetadata']

      raise 'You cannot provide both :patchObjectMetadata and :patch_object_metadata' if attributes.key?(:'patchObjectMetadata') && attributes.key?(:'patch_object_metadata')

      self.patch_object_metadata = attributes[:'patch_object_metadata'] if attributes[:'patch_object_metadata']

      self.parent_ref = attributes[:'parentRef'] if attributes[:'parentRef']

      raise 'You cannot provide both :parentRef and :parent_ref' if attributes.key?(:'parentRef') && attributes.key?(:'parent_ref')

      self.parent_ref = attributes[:'parent_ref'] if attributes[:'parent_ref']

      self.metadata = attributes[:'metadata'] if attributes[:'metadata']

      self.key_map = attributes[:'keyMap'] if attributes[:'keyMap']

      raise 'You cannot provide both :keyMap and :key_map' if attributes.key?(:'keyMap') && attributes.key?(:'key_map')

      self.key_map = attributes[:'key_map'] if attributes[:'key_map']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] patch_type Object to be assigned
    def patch_type=(patch_type)
      # rubocop:disable Style/ConditionalAssignment
      if patch_type && !PATCH_TYPE_ENUM.include?(patch_type)
        OCI.logger.debug("Unknown value for 'patch_type' [" + patch_type + "]. Mapping to 'PATCH_TYPE_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @patch_type = PATCH_TYPE_UNKNOWN_ENUM_VALUE
      else
        @patch_type = patch_type
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] patch_status Object to be assigned
    def patch_status=(patch_status)
      # rubocop:disable Style/ConditionalAssignment
      if patch_status && !PATCH_STATUS_ENUM.include?(patch_status)
        OCI.logger.debug("Unknown value for 'patch_status' [" + patch_status + "]. Mapping to 'PATCH_STATUS_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @patch_status = PATCH_STATUS_UNKNOWN_ENUM_VALUE
      else
        @patch_status = patch_status
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        key == other.key &&
        model_type == other.model_type &&
        model_version == other.model_version &&
        name == other.name &&
        description == other.description &&
        object_version == other.object_version &&
        object_status == other.object_status &&
        identifier == other.identifier &&
        time_patched == other.time_patched &&
        error_messages == other.error_messages &&
        application_version == other.application_version &&
        patch_type == other.patch_type &&
        patch_status == other.patch_status &&
        dependent_object_metadata == other.dependent_object_metadata &&
        patch_object_metadata == other.patch_object_metadata &&
        parent_ref == other.parent_ref &&
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
      [key, model_type, model_version, name, description, object_version, object_status, identifier, time_patched, error_messages, application_version, patch_type, patch_status, dependent_object_metadata, patch_object_metadata, parent_ref, metadata, key_map].hash
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