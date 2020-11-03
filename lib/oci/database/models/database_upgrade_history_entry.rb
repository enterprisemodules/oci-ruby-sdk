# Copyright (c) 2016, 2021, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # The Database service supports the upgrade history of databases.
  #
  # To use any of the API operations, you must be authorized in an IAM policy. If you are not authorized, talk to an administrator. If you are an administrator who needs to write policies to give users access, see [Getting Started with Policies](https://docs.cloud.oracle.com/Content/Identity/Concepts/policygetstarted.htm).
  #
  # For information about access control and compartments, see
  # [Overview of the Identity Service](https://docs.cloud.oracle.com/Content/Identity/Concepts/overview.htm).
  #
  # **Warning:** Oracle recommends that you avoid using any confidential information when you supply string values using the API.
  #
  class Database::Models::DatabaseUpgradeHistoryEntry
    ACTION_ENUM = [
      ACTION_PRECHECK = 'PRECHECK'.freeze,
      ACTION_UPGRADE = 'UPGRADE'.freeze,
      ACTION_ROLLBACK = 'ROLLBACK'.freeze,
      ACTION_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    SOURCE_ENUM = [
      SOURCE_DB_HOME = 'DB_HOME'.freeze,
      SOURCE_DB_VERSION = 'DB_VERSION'.freeze,
      SOURCE_DB_SOFTWARE_IMAGE = 'DB_SOFTWARE_IMAGE'.freeze,
      SOURCE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    LIFECYCLE_STATE_ENUM = [
      LIFECYCLE_STATE_SUCCEEDED = 'SUCCEEDED'.freeze,
      LIFECYCLE_STATE_FAILED = 'FAILED'.freeze,
      LIFECYCLE_STATE_IN_PROGRESS = 'IN_PROGRESS'.freeze,
      LIFECYCLE_STATE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # **[Required]** The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the database upgrade history.
    # @return [String]
    attr_accessor :id

    # **[Required]** The database upgrade action.
    # @return [String]
    attr_reader :action

    # The source of the Oracle Database software to be used for the upgrade.
    #  - Use `DB_HOME` to specify an existing Database Home to upgrade the database. The database is moved to the target Database Home and makes use of the Oracle Database software version of the target Database Home.
    #  - Use `DB_VERSION` to specify a generally-available Oracle Database software version to upgrade the database.
    #  - Use `DB_SOFTWARE_IMAGE` to specify a [database software image](https://docs.cloud.oracle.com/iaas/Content/Database/Concepts/databasesoftwareimage.htm) to upgrade the database.
    #
    # @return [String]
    attr_reader :source

    # **[Required]** Status of database upgrade history SUCCEEDED|IN_PROGRESS|FAILED.
    # @return [String]
    attr_reader :lifecycle_state

    # Additional information about the current lifecycle state.
    # @return [String]
    attr_accessor :lifecycle_details

    # A valid Oracle Database version. To get a list of supported versions, use the {#list_db_versions list_db_versions} operation.
    # @return [String]
    attr_accessor :target_db_version

    # the database software image used for upgrading database.
    # @return [String]
    attr_accessor :target_database_software_image_id

    # The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the Database Home.
    # @return [String]
    attr_accessor :target_db_home_id

    # The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the Database Home.
    # @return [String]
    attr_accessor :source_db_home_id

    # **[Required]** The date and time when the database upgrade started.
    # @return [DateTime]
    attr_accessor :time_started

    # The date and time when the database upgrade ended.
    # @return [DateTime]
    attr_accessor :time_ended

    # Additional upgrade options supported by DBUA(Database Upgrade Assistant).
    # Example: \"-upgradeTimezone false -keepEvents\"
    #
    # @return [String]
    attr_accessor :options

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'id': :'id',
        'action': :'action',
        'source': :'source',
        'lifecycle_state': :'lifecycleState',
        'lifecycle_details': :'lifecycleDetails',
        'target_db_version': :'targetDBVersion',
        'target_database_software_image_id': :'targetDatabaseSoftwareImageId',
        'target_db_home_id': :'targetDbHomeId',
        'source_db_home_id': :'sourceDbHomeId',
        'time_started': :'timeStarted',
        'time_ended': :'timeEnded',
        'options': :'options'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'id': :'String',
        'action': :'String',
        'source': :'String',
        'lifecycle_state': :'String',
        'lifecycle_details': :'String',
        'target_db_version': :'String',
        'target_database_software_image_id': :'String',
        'target_db_home_id': :'String',
        'source_db_home_id': :'String',
        'time_started': :'DateTime',
        'time_ended': :'DateTime',
        'options': :'String'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :id The value to assign to the {#id} property
    # @option attributes [String] :action The value to assign to the {#action} property
    # @option attributes [String] :source The value to assign to the {#source} property
    # @option attributes [String] :lifecycle_state The value to assign to the {#lifecycle_state} property
    # @option attributes [String] :lifecycle_details The value to assign to the {#lifecycle_details} property
    # @option attributes [String] :target_db_version The value to assign to the {#target_db_version} property
    # @option attributes [String] :target_database_software_image_id The value to assign to the {#target_database_software_image_id} property
    # @option attributes [String] :target_db_home_id The value to assign to the {#target_db_home_id} property
    # @option attributes [String] :source_db_home_id The value to assign to the {#source_db_home_id} property
    # @option attributes [DateTime] :time_started The value to assign to the {#time_started} property
    # @option attributes [DateTime] :time_ended The value to assign to the {#time_ended} property
    # @option attributes [String] :options The value to assign to the {#options} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      self.id = attributes[:'id'] if attributes[:'id']

      self.action = attributes[:'action'] if attributes[:'action']

      self.source = attributes[:'source'] if attributes[:'source']

      self.lifecycle_state = attributes[:'lifecycleState'] if attributes[:'lifecycleState']

      raise 'You cannot provide both :lifecycleState and :lifecycle_state' if attributes.key?(:'lifecycleState') && attributes.key?(:'lifecycle_state')

      self.lifecycle_state = attributes[:'lifecycle_state'] if attributes[:'lifecycle_state']

      self.lifecycle_details = attributes[:'lifecycleDetails'] if attributes[:'lifecycleDetails']

      raise 'You cannot provide both :lifecycleDetails and :lifecycle_details' if attributes.key?(:'lifecycleDetails') && attributes.key?(:'lifecycle_details')

      self.lifecycle_details = attributes[:'lifecycle_details'] if attributes[:'lifecycle_details']

      self.target_db_version = attributes[:'targetDBVersion'] if attributes[:'targetDBVersion']

      raise 'You cannot provide both :targetDBVersion and :target_db_version' if attributes.key?(:'targetDBVersion') && attributes.key?(:'target_db_version')

      self.target_db_version = attributes[:'target_db_version'] if attributes[:'target_db_version']

      self.target_database_software_image_id = attributes[:'targetDatabaseSoftwareImageId'] if attributes[:'targetDatabaseSoftwareImageId']

      raise 'You cannot provide both :targetDatabaseSoftwareImageId and :target_database_software_image_id' if attributes.key?(:'targetDatabaseSoftwareImageId') && attributes.key?(:'target_database_software_image_id')

      self.target_database_software_image_id = attributes[:'target_database_software_image_id'] if attributes[:'target_database_software_image_id']

      self.target_db_home_id = attributes[:'targetDbHomeId'] if attributes[:'targetDbHomeId']

      raise 'You cannot provide both :targetDbHomeId and :target_db_home_id' if attributes.key?(:'targetDbHomeId') && attributes.key?(:'target_db_home_id')

      self.target_db_home_id = attributes[:'target_db_home_id'] if attributes[:'target_db_home_id']

      self.source_db_home_id = attributes[:'sourceDbHomeId'] if attributes[:'sourceDbHomeId']

      raise 'You cannot provide both :sourceDbHomeId and :source_db_home_id' if attributes.key?(:'sourceDbHomeId') && attributes.key?(:'source_db_home_id')

      self.source_db_home_id = attributes[:'source_db_home_id'] if attributes[:'source_db_home_id']

      self.time_started = attributes[:'timeStarted'] if attributes[:'timeStarted']

      raise 'You cannot provide both :timeStarted and :time_started' if attributes.key?(:'timeStarted') && attributes.key?(:'time_started')

      self.time_started = attributes[:'time_started'] if attributes[:'time_started']

      self.time_ended = attributes[:'timeEnded'] if attributes[:'timeEnded']

      raise 'You cannot provide both :timeEnded and :time_ended' if attributes.key?(:'timeEnded') && attributes.key?(:'time_ended')

      self.time_ended = attributes[:'time_ended'] if attributes[:'time_ended']

      self.options = attributes[:'options'] if attributes[:'options']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] action Object to be assigned
    def action=(action)
      # rubocop:disable Style/ConditionalAssignment
      if action && !ACTION_ENUM.include?(action)
        OCI.logger.debug("Unknown value for 'action' [" + action + "]. Mapping to 'ACTION_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @action = ACTION_UNKNOWN_ENUM_VALUE
      else
        @action = action
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] source Object to be assigned
    def source=(source)
      # rubocop:disable Style/ConditionalAssignment
      if source && !SOURCE_ENUM.include?(source)
        OCI.logger.debug("Unknown value for 'source' [" + source + "]. Mapping to 'SOURCE_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @source = SOURCE_UNKNOWN_ENUM_VALUE
      else
        @source = source
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
        action == other.action &&
        source == other.source &&
        lifecycle_state == other.lifecycle_state &&
        lifecycle_details == other.lifecycle_details &&
        target_db_version == other.target_db_version &&
        target_database_software_image_id == other.target_database_software_image_id &&
        target_db_home_id == other.target_db_home_id &&
        source_db_home_id == other.source_db_home_id &&
        time_started == other.time_started &&
        time_ended == other.time_ended &&
        options == other.options
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
      [id, action, source, lifecycle_state, lifecycle_details, target_db_version, target_database_software_image_id, target_db_home_id, source_db_home_id, time_started, time_ended, options].hash
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