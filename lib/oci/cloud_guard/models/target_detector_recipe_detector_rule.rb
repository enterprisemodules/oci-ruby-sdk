# Copyright (c) 2016, 2021, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Detector Recipe Rule
  class CloudGuard::Models::TargetDetectorRecipeDetectorRule
    DETECTOR_ENUM = [
      DETECTOR_IAAS_ACTIVITY_DETECTOR = 'IAAS_ACTIVITY_DETECTOR'.freeze,
      DETECTOR_IAAS_CONFIGURATION_DETECTOR = 'IAAS_CONFIGURATION_DETECTOR'.freeze,
      DETECTOR_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    MANAGED_LIST_TYPES_ENUM = [
      MANAGED_LIST_TYPES_CIDR_BLOCK = 'CIDR_BLOCK'.freeze,
      MANAGED_LIST_TYPES_USERS = 'USERS'.freeze,
      MANAGED_LIST_TYPES_GROUPS = 'GROUPS'.freeze,
      MANAGED_LIST_TYPES_IPV4_ADDRESS = 'IPV4ADDRESS'.freeze,
      MANAGED_LIST_TYPES_IPV6_ADDRESS = 'IPV6ADDRESS'.freeze,
      MANAGED_LIST_TYPES_RESOURCE_OCID = 'RESOURCE_OCID'.freeze,
      MANAGED_LIST_TYPES_REGION = 'REGION'.freeze,
      MANAGED_LIST_TYPES_COUNTRY = 'COUNTRY'.freeze,
      MANAGED_LIST_TYPES_STATE = 'STATE'.freeze,
      MANAGED_LIST_TYPES_CITY = 'CITY'.freeze,
      MANAGED_LIST_TYPES_TAGS = 'TAGS'.freeze,
      MANAGED_LIST_TYPES_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    LIFECYCLE_STATE_ENUM = [
      LIFECYCLE_STATE_CREATING = 'CREATING'.freeze,
      LIFECYCLE_STATE_UPDATING = 'UPDATING'.freeze,
      LIFECYCLE_STATE_ACTIVE = 'ACTIVE'.freeze,
      LIFECYCLE_STATE_INACTIVE = 'INACTIVE'.freeze,
      LIFECYCLE_STATE_DELETING = 'DELETING'.freeze,
      LIFECYCLE_STATE_DELETED = 'DELETED'.freeze,
      LIFECYCLE_STATE_FAILED = 'FAILED'.freeze,
      LIFECYCLE_STATE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # **[Required]** The unique identifier of the detector rule
    # @return [String]
    attr_accessor :detector_rule_id

    # displayName
    # @return [String]
    attr_accessor :display_name

    # Description for TargetDetectorRecipeDetectorRule
    # @return [String]
    attr_accessor :description

    # Recommendation for TargetDetectorRecipeDetectorRule
    # @return [String]
    attr_accessor :recommendation

    # **[Required]** detector for the rule
    # @return [String]
    attr_reader :detector

    # **[Required]** service type of the configuration to which the rule is applied
    # @return [String]
    attr_accessor :service_type

    # **[Required]** resource type of the configuration to which the rule is applied
    # @return [String]
    attr_accessor :resource_type

    # @return [OCI::CloudGuard::Models::TargetDetectorDetails]
    attr_accessor :details

    # List of cloudguard managed list types related to this rule
    # @return [Array<String>]
    attr_reader :managed_list_types

    # The date and time the target detector recipe rule was created. Format defined by RFC3339.
    # @return [DateTime]
    attr_accessor :time_created

    # The date and time the target detector recipe rule was updated. Format defined by RFC3339.
    # @return [DateTime]
    attr_accessor :time_updated

    # The current state of the DetectorRule.
    # @return [String]
    attr_reader :lifecycle_state

    # A message describing the current state in more detail. For example, can be used to provide actionable information for a resource in Failed state.
    # @return [String]
    attr_accessor :lifecycle_details

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'detector_rule_id': :'detectorRuleId',
        'display_name': :'displayName',
        'description': :'description',
        'recommendation': :'recommendation',
        'detector': :'detector',
        'service_type': :'serviceType',
        'resource_type': :'resourceType',
        'details': :'details',
        'managed_list_types': :'managedListTypes',
        'time_created': :'timeCreated',
        'time_updated': :'timeUpdated',
        'lifecycle_state': :'lifecycleState',
        'lifecycle_details': :'lifecycleDetails'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'detector_rule_id': :'String',
        'display_name': :'String',
        'description': :'String',
        'recommendation': :'String',
        'detector': :'String',
        'service_type': :'String',
        'resource_type': :'String',
        'details': :'OCI::CloudGuard::Models::TargetDetectorDetails',
        'managed_list_types': :'Array<String>',
        'time_created': :'DateTime',
        'time_updated': :'DateTime',
        'lifecycle_state': :'String',
        'lifecycle_details': :'String'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :detector_rule_id The value to assign to the {#detector_rule_id} property
    # @option attributes [String] :display_name The value to assign to the {#display_name} property
    # @option attributes [String] :description The value to assign to the {#description} property
    # @option attributes [String] :recommendation The value to assign to the {#recommendation} property
    # @option attributes [String] :detector The value to assign to the {#detector} property
    # @option attributes [String] :service_type The value to assign to the {#service_type} property
    # @option attributes [String] :resource_type The value to assign to the {#resource_type} property
    # @option attributes [OCI::CloudGuard::Models::TargetDetectorDetails] :details The value to assign to the {#details} property
    # @option attributes [Array<String>] :managed_list_types The value to assign to the {#managed_list_types} property
    # @option attributes [DateTime] :time_created The value to assign to the {#time_created} property
    # @option attributes [DateTime] :time_updated The value to assign to the {#time_updated} property
    # @option attributes [String] :lifecycle_state The value to assign to the {#lifecycle_state} property
    # @option attributes [String] :lifecycle_details The value to assign to the {#lifecycle_details} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.detector_rule_id = attributes[:'detectorRuleId'] if attributes[:'detectorRuleId']

      raise 'You cannot provide both :detectorRuleId and :detector_rule_id' if attributes.key?(:'detectorRuleId') && attributes.key?(:'detector_rule_id')

      self.detector_rule_id = attributes[:'detector_rule_id'] if attributes[:'detector_rule_id']

      self.display_name = attributes[:'displayName'] if attributes[:'displayName']

      raise 'You cannot provide both :displayName and :display_name' if attributes.key?(:'displayName') && attributes.key?(:'display_name')

      self.display_name = attributes[:'display_name'] if attributes[:'display_name']

      self.description = attributes[:'description'] if attributes[:'description']

      self.recommendation = attributes[:'recommendation'] if attributes[:'recommendation']

      self.detector = attributes[:'detector'] if attributes[:'detector']

      self.service_type = attributes[:'serviceType'] if attributes[:'serviceType']

      raise 'You cannot provide both :serviceType and :service_type' if attributes.key?(:'serviceType') && attributes.key?(:'service_type')

      self.service_type = attributes[:'service_type'] if attributes[:'service_type']

      self.resource_type = attributes[:'resourceType'] if attributes[:'resourceType']

      raise 'You cannot provide both :resourceType and :resource_type' if attributes.key?(:'resourceType') && attributes.key?(:'resource_type')

      self.resource_type = attributes[:'resource_type'] if attributes[:'resource_type']

      self.details = attributes[:'details'] if attributes[:'details']

      self.managed_list_types = attributes[:'managedListTypes'] if attributes[:'managedListTypes']

      raise 'You cannot provide both :managedListTypes and :managed_list_types' if attributes.key?(:'managedListTypes') && attributes.key?(:'managed_list_types')

      self.managed_list_types = attributes[:'managed_list_types'] if attributes[:'managed_list_types']

      self.time_created = attributes[:'timeCreated'] if attributes[:'timeCreated']

      raise 'You cannot provide both :timeCreated and :time_created' if attributes.key?(:'timeCreated') && attributes.key?(:'time_created')

      self.time_created = attributes[:'time_created'] if attributes[:'time_created']

      self.time_updated = attributes[:'timeUpdated'] if attributes[:'timeUpdated']

      raise 'You cannot provide both :timeUpdated and :time_updated' if attributes.key?(:'timeUpdated') && attributes.key?(:'time_updated')

      self.time_updated = attributes[:'time_updated'] if attributes[:'time_updated']

      self.lifecycle_state = attributes[:'lifecycleState'] if attributes[:'lifecycleState']

      raise 'You cannot provide both :lifecycleState and :lifecycle_state' if attributes.key?(:'lifecycleState') && attributes.key?(:'lifecycle_state')

      self.lifecycle_state = attributes[:'lifecycle_state'] if attributes[:'lifecycle_state']

      self.lifecycle_details = attributes[:'lifecycleDetails'] if attributes[:'lifecycleDetails']

      raise 'You cannot provide both :lifecycleDetails and :lifecycle_details' if attributes.key?(:'lifecycleDetails') && attributes.key?(:'lifecycle_details')

      self.lifecycle_details = attributes[:'lifecycle_details'] if attributes[:'lifecycle_details']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] detector Object to be assigned
    def detector=(detector)
      # rubocop:disable Style/ConditionalAssignment
      if detector && !DETECTOR_ENUM.include?(detector)
        OCI.logger.debug("Unknown value for 'detector' [" + detector + "]. Mapping to 'DETECTOR_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @detector = DETECTOR_UNKNOWN_ENUM_VALUE
      else
        @detector = detector
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] managed_list_types Object to be assigned
    def managed_list_types=(managed_list_types)
      # rubocop:disable Style/ConditionalAssignment
      if managed_list_types.nil?
        @managed_list_types = nil
      else
        @managed_list_types =
          managed_list_types.collect do |item|
            if MANAGED_LIST_TYPES_ENUM.include?(item)
              item
            else
              OCI.logger.debug("Unknown value for 'managed_list_types' [#{item}]. Mapping to 'MANAGED_LIST_TYPES_UNKNOWN_ENUM_VALUE'") if OCI.logger
              MANAGED_LIST_TYPES_UNKNOWN_ENUM_VALUE
            end
          end
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
        detector_rule_id == other.detector_rule_id &&
        display_name == other.display_name &&
        description == other.description &&
        recommendation == other.recommendation &&
        detector == other.detector &&
        service_type == other.service_type &&
        resource_type == other.resource_type &&
        details == other.details &&
        managed_list_types == other.managed_list_types &&
        time_created == other.time_created &&
        time_updated == other.time_updated &&
        lifecycle_state == other.lifecycle_state &&
        lifecycle_details == other.lifecycle_details
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
      [detector_rule_id, display_name, description, recommendation, detector, service_type, resource_type, details, managed_list_types, time_created, time_updated, lifecycle_state, lifecycle_details].hash
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