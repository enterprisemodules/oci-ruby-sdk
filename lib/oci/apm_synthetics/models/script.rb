# Copyright (c) 2016, 2021, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # The information about the script.
  class ApmSynthetics::Models::Script
    CONTENT_TYPE_ENUM = [
      CONTENT_TYPE_SIDE = 'SIDE'.freeze,
      CONTENT_TYPE_JS = 'JS'.freeze,
      CONTENT_TYPE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # **[Required]** The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the script.
    # scriptId is mandatory for creation of SCRIPTED_BROWSER and SCRIPTED_REST monitor types. For other monitor types, it should be set to null.
    #
    # @return [String]
    attr_accessor :id

    # **[Required]** Unique name that can be edited. The name should not contain any confidential information.
    # @return [String]
    attr_accessor :display_name

    # **[Required]** Content type of the script.
    # @return [String]
    attr_reader :content_type

    # The content of the script. It may contain custom-defined tags that can be used for setting dynamic parameters.
    # The format to set dynamic parameters is: `<ORAP><ON>param name</ON><OV>param value</OV><OS>isParamValueSecret(true/false)</OS></ORAP>`.
    # Param value and isParamValueSecret are optional, the default value for isParamValueSecret is false.
    # Examples:
    # With mandatory param name : `<ORAP><ON>param name</ON></ORAP>`
    # With parameter name and value : `<ORAP><ON>param name</ON><OV>param value</OV></ORAP>`
    # Note that the content is valid if it matches the given content type. For example, if the content type is SIDE, then the content should be in Side script format. If the content type is JS, then the content should be in JavaScript format.
    #
    # @return [String]
    attr_accessor :content

    # The time when the script was uploaded.
    # @return [DateTime]
    attr_accessor :time_uploaded

    # Size of the script content.
    # @return [Integer]
    attr_accessor :content_size_in_bytes

    # File name of the uploaded script content.
    # @return [String]
    attr_accessor :content_file_name

    # List of script parameters. Example: `[{\"scriptParameter\": {\"paramName\": \"userid\", \"paramValue\":\"testuser\", \"isSecret\": false}, \"isOverwritten\": false}]`
    #
    # @return [Array<OCI::ApmSynthetics::Models::ScriptParameterInfo>]
    attr_accessor :parameters

    # This attribute is required.
    # @return [OCI::ApmSynthetics::Models::MonitorStatusCountMap]
    attr_accessor :monitor_status_count_map

    # The time the resource was created, expressed in [RFC 3339](https://tools.ietf.org/html/rfc3339)
    # timestamp format.
    # Example: `2020-02-12T22:47:12.613Z`
    #
    # @return [DateTime]
    attr_accessor :time_created

    # The time the resource was updated, expressed in [RFC 3339](https://tools.ietf.org/html/rfc3339)
    # timestamp format.
    # Example: `2020-02-13T22:47:12.613Z`
    #
    # @return [DateTime]
    attr_accessor :time_updated

    # Simple key-value pair that is applied without any predefined name, type or scope. Exists for cross-compatibility only.
    # Example: `{\"bar-key\": \"value\"}`
    #
    # @return [Hash<String, String>]
    attr_accessor :freeform_tags

    # Defined tags for this resource. Each key is predefined and scoped to a namespace.
    # Example: `{\"foo-namespace\": {\"bar-key\": \"value\"}}`
    #
    # @return [Hash<String, Hash<String, Object>>]
    attr_accessor :defined_tags

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'id': :'id',
        'display_name': :'displayName',
        'content_type': :'contentType',
        'content': :'content',
        'time_uploaded': :'timeUploaded',
        'content_size_in_bytes': :'contentSizeInBytes',
        'content_file_name': :'contentFileName',
        'parameters': :'parameters',
        'monitor_status_count_map': :'monitorStatusCountMap',
        'time_created': :'timeCreated',
        'time_updated': :'timeUpdated',
        'freeform_tags': :'freeformTags',
        'defined_tags': :'definedTags'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'id': :'String',
        'display_name': :'String',
        'content_type': :'String',
        'content': :'String',
        'time_uploaded': :'DateTime',
        'content_size_in_bytes': :'Integer',
        'content_file_name': :'String',
        'parameters': :'Array<OCI::ApmSynthetics::Models::ScriptParameterInfo>',
        'monitor_status_count_map': :'OCI::ApmSynthetics::Models::MonitorStatusCountMap',
        'time_created': :'DateTime',
        'time_updated': :'DateTime',
        'freeform_tags': :'Hash<String, String>',
        'defined_tags': :'Hash<String, Hash<String, Object>>'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :id The value to assign to the {#id} property
    # @option attributes [String] :display_name The value to assign to the {#display_name} property
    # @option attributes [String] :content_type The value to assign to the {#content_type} property
    # @option attributes [String] :content The value to assign to the {#content} property
    # @option attributes [DateTime] :time_uploaded The value to assign to the {#time_uploaded} property
    # @option attributes [Integer] :content_size_in_bytes The value to assign to the {#content_size_in_bytes} property
    # @option attributes [String] :content_file_name The value to assign to the {#content_file_name} property
    # @option attributes [Array<OCI::ApmSynthetics::Models::ScriptParameterInfo>] :parameters The value to assign to the {#parameters} property
    # @option attributes [OCI::ApmSynthetics::Models::MonitorStatusCountMap] :monitor_status_count_map The value to assign to the {#monitor_status_count_map} property
    # @option attributes [DateTime] :time_created The value to assign to the {#time_created} property
    # @option attributes [DateTime] :time_updated The value to assign to the {#time_updated} property
    # @option attributes [Hash<String, String>] :freeform_tags The value to assign to the {#freeform_tags} property
    # @option attributes [Hash<String, Hash<String, Object>>] :defined_tags The value to assign to the {#defined_tags} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.id = attributes[:'id'] if attributes[:'id']

      self.display_name = attributes[:'displayName'] if attributes[:'displayName']

      raise 'You cannot provide both :displayName and :display_name' if attributes.key?(:'displayName') && attributes.key?(:'display_name')

      self.display_name = attributes[:'display_name'] if attributes[:'display_name']

      self.content_type = attributes[:'contentType'] if attributes[:'contentType']

      raise 'You cannot provide both :contentType and :content_type' if attributes.key?(:'contentType') && attributes.key?(:'content_type')

      self.content_type = attributes[:'content_type'] if attributes[:'content_type']

      self.content = attributes[:'content'] if attributes[:'content']

      self.time_uploaded = attributes[:'timeUploaded'] if attributes[:'timeUploaded']

      raise 'You cannot provide both :timeUploaded and :time_uploaded' if attributes.key?(:'timeUploaded') && attributes.key?(:'time_uploaded')

      self.time_uploaded = attributes[:'time_uploaded'] if attributes[:'time_uploaded']

      self.content_size_in_bytes = attributes[:'contentSizeInBytes'] if attributes[:'contentSizeInBytes']

      raise 'You cannot provide both :contentSizeInBytes and :content_size_in_bytes' if attributes.key?(:'contentSizeInBytes') && attributes.key?(:'content_size_in_bytes')

      self.content_size_in_bytes = attributes[:'content_size_in_bytes'] if attributes[:'content_size_in_bytes']

      self.content_file_name = attributes[:'contentFileName'] if attributes[:'contentFileName']

      raise 'You cannot provide both :contentFileName and :content_file_name' if attributes.key?(:'contentFileName') && attributes.key?(:'content_file_name')

      self.content_file_name = attributes[:'content_file_name'] if attributes[:'content_file_name']

      self.parameters = attributes[:'parameters'] if attributes[:'parameters']

      self.monitor_status_count_map = attributes[:'monitorStatusCountMap'] if attributes[:'monitorStatusCountMap']

      raise 'You cannot provide both :monitorStatusCountMap and :monitor_status_count_map' if attributes.key?(:'monitorStatusCountMap') && attributes.key?(:'monitor_status_count_map')

      self.monitor_status_count_map = attributes[:'monitor_status_count_map'] if attributes[:'monitor_status_count_map']

      self.time_created = attributes[:'timeCreated'] if attributes[:'timeCreated']

      raise 'You cannot provide both :timeCreated and :time_created' if attributes.key?(:'timeCreated') && attributes.key?(:'time_created')

      self.time_created = attributes[:'time_created'] if attributes[:'time_created']

      self.time_updated = attributes[:'timeUpdated'] if attributes[:'timeUpdated']

      raise 'You cannot provide both :timeUpdated and :time_updated' if attributes.key?(:'timeUpdated') && attributes.key?(:'time_updated')

      self.time_updated = attributes[:'time_updated'] if attributes[:'time_updated']

      self.freeform_tags = attributes[:'freeformTags'] if attributes[:'freeformTags']

      raise 'You cannot provide both :freeformTags and :freeform_tags' if attributes.key?(:'freeformTags') && attributes.key?(:'freeform_tags')

      self.freeform_tags = attributes[:'freeform_tags'] if attributes[:'freeform_tags']

      self.defined_tags = attributes[:'definedTags'] if attributes[:'definedTags']

      raise 'You cannot provide both :definedTags and :defined_tags' if attributes.key?(:'definedTags') && attributes.key?(:'defined_tags')

      self.defined_tags = attributes[:'defined_tags'] if attributes[:'defined_tags']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] content_type Object to be assigned
    def content_type=(content_type)
      # rubocop:disable Style/ConditionalAssignment
      if content_type && !CONTENT_TYPE_ENUM.include?(content_type)
        OCI.logger.debug("Unknown value for 'content_type' [" + content_type + "]. Mapping to 'CONTENT_TYPE_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @content_type = CONTENT_TYPE_UNKNOWN_ENUM_VALUE
      else
        @content_type = content_type
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        id == other.id &&
        display_name == other.display_name &&
        content_type == other.content_type &&
        content == other.content &&
        time_uploaded == other.time_uploaded &&
        content_size_in_bytes == other.content_size_in_bytes &&
        content_file_name == other.content_file_name &&
        parameters == other.parameters &&
        monitor_status_count_map == other.monitor_status_count_map &&
        time_created == other.time_created &&
        time_updated == other.time_updated &&
        freeform_tags == other.freeform_tags &&
        defined_tags == other.defined_tags
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
      [id, display_name, content_type, content, time_uploaded, content_size_in_bytes, content_file_name, parameters, monitor_status_count_map, time_created, time_updated, freeform_tags, defined_tags].hash
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