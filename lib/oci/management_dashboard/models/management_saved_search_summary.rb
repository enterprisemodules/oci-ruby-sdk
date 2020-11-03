# Copyright (c) 2016, 2021, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Summary of the properties of a saved search.
  class ManagementDashboard::Models::ManagementSavedSearchSummary
    TYPE_ENUM = [
      TYPE_SEARCH_SHOW_IN_DASHBOARD = 'SEARCH_SHOW_IN_DASHBOARD'.freeze,
      TYPE_SEARCH_DONT_SHOW_IN_DASHBOARD = 'SEARCH_DONT_SHOW_IN_DASHBOARD'.freeze,
      TYPE_WIDGET_SHOW_IN_DASHBOARD = 'WIDGET_SHOW_IN_DASHBOARD'.freeze,
      TYPE_WIDGET_DONT_SHOW_IN_DASHBOARD = 'WIDGET_DONT_SHOW_IN_DASHBOARD'.freeze,
      TYPE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    LIFECYCLE_STATE_ENUM = [
      LIFECYCLE_STATE_ACTIVE = 'ACTIVE'.freeze,
      LIFECYCLE_STATE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # **[Required]** ID of the saved search.
    # @return [String]
    attr_accessor :id

    # **[Required]** Display name of the saved search.
    # @return [String]
    attr_accessor :display_name

    # **[Required]** Determines whether the saved search is an Out-of-the-Box (OOB) saved search. Note that OOB saved searches are only provided by Oracle and cannot be modified.
    # @return [BOOLEAN]
    attr_accessor :is_oob_saved_search

    # **[Required]** ID of the service (for example log-analytics) that owns the saved search. Each service has a unique ID.
    # @return [String]
    attr_accessor :provider_id

    # **[Required]** OCID of the compartment in which the saved search resides.
    # @return [String]
    attr_accessor :compartment_id

    # **[Required]** Description of the saved search.
    # @return [String]
    attr_accessor :description

    # **[Required]** JSON that contains internationalization options.
    # @return [Object]
    attr_accessor :nls

    # **[Required]** Determines how the saved search is displayed in a dashboard.
    # @return [String]
    attr_reader :type

    # **[Required]** JSON that contains user interface options.
    # @return [Object]
    attr_accessor :ui_config

    # **[Required]** Array of JSON that contain data source options.
    # @return [Array<Object>]
    attr_accessor :data_config

    # **[Required]** User who created the saved search.
    # @return [String]
    attr_accessor :created_by

    # **[Required]** User who updated the saved search.
    # @return [String]
    attr_accessor :updated_by

    # **[Required]** Date and time the saved search was created.
    # @return [DateTime]
    attr_accessor :time_created

    # **[Required]** Date and time the saved search was updated.
    # @return [DateTime]
    attr_accessor :time_updated

    # **[Required]** Screen image of the saved search.
    # @return [String]
    attr_accessor :screen_image

    # **[Required]** Version of the metadata.
    # @return [String]
    attr_accessor :metadata_version

    # **[Required]** Reference to the HTML file of the widget.
    # @return [String]
    attr_accessor :widget_template

    # **[Required]** Reference to the view model of the widget.
    # @return [String]
    attr_accessor :widget_vm

    # **[Required]** Current lifecycle state of the saved search.
    # @return [String]
    attr_reader :lifecycle_state

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
        'is_oob_saved_search': :'isOobSavedSearch',
        'provider_id': :'providerId',
        'compartment_id': :'compartmentId',
        'description': :'description',
        'nls': :'nls',
        'type': :'type',
        'ui_config': :'uiConfig',
        'data_config': :'dataConfig',
        'created_by': :'createdBy',
        'updated_by': :'updatedBy',
        'time_created': :'timeCreated',
        'time_updated': :'timeUpdated',
        'screen_image': :'screenImage',
        'metadata_version': :'metadataVersion',
        'widget_template': :'widgetTemplate',
        'widget_vm': :'widgetVM',
        'lifecycle_state': :'lifecycleState',
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
        'is_oob_saved_search': :'BOOLEAN',
        'provider_id': :'String',
        'compartment_id': :'String',
        'description': :'String',
        'nls': :'Object',
        'type': :'String',
        'ui_config': :'Object',
        'data_config': :'Array<Object>',
        'created_by': :'String',
        'updated_by': :'String',
        'time_created': :'DateTime',
        'time_updated': :'DateTime',
        'screen_image': :'String',
        'metadata_version': :'String',
        'widget_template': :'String',
        'widget_vm': :'String',
        'lifecycle_state': :'String',
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
    # @option attributes [BOOLEAN] :is_oob_saved_search The value to assign to the {#is_oob_saved_search} property
    # @option attributes [String] :provider_id The value to assign to the {#provider_id} property
    # @option attributes [String] :compartment_id The value to assign to the {#compartment_id} property
    # @option attributes [String] :description The value to assign to the {#description} property
    # @option attributes [Object] :nls The value to assign to the {#nls} property
    # @option attributes [String] :type The value to assign to the {#type} property
    # @option attributes [Object] :ui_config The value to assign to the {#ui_config} property
    # @option attributes [Array<Object>] :data_config The value to assign to the {#data_config} property
    # @option attributes [String] :created_by The value to assign to the {#created_by} property
    # @option attributes [String] :updated_by The value to assign to the {#updated_by} property
    # @option attributes [DateTime] :time_created The value to assign to the {#time_created} property
    # @option attributes [DateTime] :time_updated The value to assign to the {#time_updated} property
    # @option attributes [String] :screen_image The value to assign to the {#screen_image} property
    # @option attributes [String] :metadata_version The value to assign to the {#metadata_version} property
    # @option attributes [String] :widget_template The value to assign to the {#widget_template} property
    # @option attributes [String] :widget_vm The value to assign to the {#widget_vm} property
    # @option attributes [String] :lifecycle_state The value to assign to the {#lifecycle_state} property
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

      self.is_oob_saved_search = attributes[:'isOobSavedSearch'] unless attributes[:'isOobSavedSearch'].nil?

      raise 'You cannot provide both :isOobSavedSearch and :is_oob_saved_search' if attributes.key?(:'isOobSavedSearch') && attributes.key?(:'is_oob_saved_search')

      self.is_oob_saved_search = attributes[:'is_oob_saved_search'] unless attributes[:'is_oob_saved_search'].nil?

      self.provider_id = attributes[:'providerId'] if attributes[:'providerId']

      raise 'You cannot provide both :providerId and :provider_id' if attributes.key?(:'providerId') && attributes.key?(:'provider_id')

      self.provider_id = attributes[:'provider_id'] if attributes[:'provider_id']

      self.compartment_id = attributes[:'compartmentId'] if attributes[:'compartmentId']

      raise 'You cannot provide both :compartmentId and :compartment_id' if attributes.key?(:'compartmentId') && attributes.key?(:'compartment_id')

      self.compartment_id = attributes[:'compartment_id'] if attributes[:'compartment_id']

      self.description = attributes[:'description'] if attributes[:'description']

      self.nls = attributes[:'nls'] if attributes[:'nls']

      self.type = attributes[:'type'] if attributes[:'type']

      self.ui_config = attributes[:'uiConfig'] if attributes[:'uiConfig']

      raise 'You cannot provide both :uiConfig and :ui_config' if attributes.key?(:'uiConfig') && attributes.key?(:'ui_config')

      self.ui_config = attributes[:'ui_config'] if attributes[:'ui_config']

      self.data_config = attributes[:'dataConfig'] if attributes[:'dataConfig']

      raise 'You cannot provide both :dataConfig and :data_config' if attributes.key?(:'dataConfig') && attributes.key?(:'data_config')

      self.data_config = attributes[:'data_config'] if attributes[:'data_config']

      self.created_by = attributes[:'createdBy'] if attributes[:'createdBy']

      raise 'You cannot provide both :createdBy and :created_by' if attributes.key?(:'createdBy') && attributes.key?(:'created_by')

      self.created_by = attributes[:'created_by'] if attributes[:'created_by']

      self.updated_by = attributes[:'updatedBy'] if attributes[:'updatedBy']

      raise 'You cannot provide both :updatedBy and :updated_by' if attributes.key?(:'updatedBy') && attributes.key?(:'updated_by')

      self.updated_by = attributes[:'updated_by'] if attributes[:'updated_by']

      self.time_created = attributes[:'timeCreated'] if attributes[:'timeCreated']

      raise 'You cannot provide both :timeCreated and :time_created' if attributes.key?(:'timeCreated') && attributes.key?(:'time_created')

      self.time_created = attributes[:'time_created'] if attributes[:'time_created']

      self.time_updated = attributes[:'timeUpdated'] if attributes[:'timeUpdated']

      raise 'You cannot provide both :timeUpdated and :time_updated' if attributes.key?(:'timeUpdated') && attributes.key?(:'time_updated')

      self.time_updated = attributes[:'time_updated'] if attributes[:'time_updated']

      self.screen_image = attributes[:'screenImage'] if attributes[:'screenImage']

      raise 'You cannot provide both :screenImage and :screen_image' if attributes.key?(:'screenImage') && attributes.key?(:'screen_image')

      self.screen_image = attributes[:'screen_image'] if attributes[:'screen_image']

      self.metadata_version = attributes[:'metadataVersion'] if attributes[:'metadataVersion']

      raise 'You cannot provide both :metadataVersion and :metadata_version' if attributes.key?(:'metadataVersion') && attributes.key?(:'metadata_version')

      self.metadata_version = attributes[:'metadata_version'] if attributes[:'metadata_version']

      self.widget_template = attributes[:'widgetTemplate'] if attributes[:'widgetTemplate']

      raise 'You cannot provide both :widgetTemplate and :widget_template' if attributes.key?(:'widgetTemplate') && attributes.key?(:'widget_template')

      self.widget_template = attributes[:'widget_template'] if attributes[:'widget_template']

      self.widget_vm = attributes[:'widgetVM'] if attributes[:'widgetVM']

      raise 'You cannot provide both :widgetVM and :widget_vm' if attributes.key?(:'widgetVM') && attributes.key?(:'widget_vm')

      self.widget_vm = attributes[:'widget_vm'] if attributes[:'widget_vm']

      self.lifecycle_state = attributes[:'lifecycleState'] if attributes[:'lifecycleState']

      raise 'You cannot provide both :lifecycleState and :lifecycle_state' if attributes.key?(:'lifecycleState') && attributes.key?(:'lifecycle_state')

      self.lifecycle_state = attributes[:'lifecycle_state'] if attributes[:'lifecycle_state']

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
    # @param [Object] type Object to be assigned
    def type=(type)
      # rubocop:disable Style/ConditionalAssignment
      if type && !TYPE_ENUM.include?(type)
        OCI.logger.debug("Unknown value for 'type' [" + type + "]. Mapping to 'TYPE_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @type = TYPE_UNKNOWN_ENUM_VALUE
      else
        @type = type
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] lifecycle_state Object to be assigned
    def lifecycle_state=(lifecycle_state)
      # rubocop:disable Style/ConditionalAssignment
      if lifecycle_state && !LIFECYCLE_STATE_ENUM.include?(lifecycle_state)
        OCI.logger.debug("Unknown value for 'lifecycle_state' [" + lifecycle_state + "]. Mapping to 'LIFECYCLE_STATE_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @lifecycle_state = LIFECYCLE_STATE_UNKNOWN_ENUM_VALUE
      else
        @lifecycle_state = lifecycle_state
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
        is_oob_saved_search == other.is_oob_saved_search &&
        provider_id == other.provider_id &&
        compartment_id == other.compartment_id &&
        description == other.description &&
        nls == other.nls &&
        type == other.type &&
        ui_config == other.ui_config &&
        data_config == other.data_config &&
        created_by == other.created_by &&
        updated_by == other.updated_by &&
        time_created == other.time_created &&
        time_updated == other.time_updated &&
        screen_image == other.screen_image &&
        metadata_version == other.metadata_version &&
        widget_template == other.widget_template &&
        widget_vm == other.widget_vm &&
        lifecycle_state == other.lifecycle_state &&
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
      [id, display_name, is_oob_saved_search, provider_id, compartment_id, description, nls, type, ui_config, data_config, created_by, updated_by, time_created, time_updated, screen_image, metadata_version, widget_template, widget_vm, lifecycle_state, freeform_tags, defined_tags].hash
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