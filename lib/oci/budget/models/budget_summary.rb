# Copyright (c) 2016, 2020, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # A budget.
  class Budget::Models::BudgetSummary
    RESET_PERIOD_ENUM = [
      RESET_PERIOD_MONTHLY = 'MONTHLY'.freeze,
      RESET_PERIOD_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    TARGET_TYPE_ENUM = [
      TARGET_TYPE_COMPARTMENT = 'COMPARTMENT'.freeze,
      TARGET_TYPE_TAG = 'TAG'.freeze,
      TARGET_TYPE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    LIFECYCLE_STATE_ENUM = [
      LIFECYCLE_STATE_ACTIVE = 'ACTIVE'.freeze,
      LIFECYCLE_STATE_INACTIVE = 'INACTIVE'.freeze,
      LIFECYCLE_STATE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # **[Required]** The OCID of the budget
    # @return [String]
    attr_accessor :id

    # **[Required]** The OCID of the compartment
    # @return [String]
    attr_accessor :compartment_id

    # This is DEPRECATED. For backwards compatability, the property will be populated when
    # targetType is \"COMPARTMENT\" AND targets contains EXACT ONE target compartment ocid.
    # For all other scenarios, this property will be left empty.
    #
    # @return [String]
    attr_accessor :target_compartment_id

    # **[Required]** The display name of the budget.
    # @return [String]
    attr_accessor :display_name

    # The description of the budget.
    # @return [String]
    attr_accessor :description

    # **[Required]** The amount of the budget expressed in the currency of the customer's rate card.
    #
    # @return [Float]
    attr_accessor :amount

    # **[Required]** The reset period for the budget.
    #
    # @return [String]
    attr_reader :reset_period

    # The type of target on which the budget is applied.
    #
    # @return [String]
    attr_reader :target_type

    # The list of targets on which the budget is applied.
    #   If targetType is \"COMPARTMENT\", targets contains list of compartment OCIDs.
    #   If targetType is \"TAG\", targets contains list of cost tracking tag identifiers in the form of \"{tagNamespace}.{tagKey}.{tagValue}\".
    #
    # @return [Array<String>]
    attr_accessor :targets

    # **[Required]** The current state of the budget.
    # @return [String]
    attr_reader :lifecycle_state

    # **[Required]** Total number of alert rules in the budget
    # @return [Integer]
    attr_accessor :alert_rule_count

    # Version of the budget. Starts from 1 and increments by 1.
    # @return [Integer]
    attr_accessor :version

    # The actual spend in currency for the current budget cycle
    # @return [Float]
    attr_accessor :actual_spend

    # The forecasted spend in currency by the end of the current budget cycle
    # @return [Float]
    attr_accessor :forecasted_spend

    # Time budget spend was last computed
    # @return [DateTime]
    attr_accessor :time_spend_computed

    # **[Required]** Time budget was created
    # @return [DateTime]
    attr_accessor :time_created

    # **[Required]** Time budget was updated
    # @return [DateTime]
    attr_accessor :time_updated

    # Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace.
    # For more information, see [Resource Tags](https://docs.cloud.oracle.com/Content/General/Concepts/resourcetags.htm).
    #
    # Example: `{\"Department\": \"Finance\"}`
    #
    # @return [Hash<String, String>]
    attr_accessor :freeform_tags

    # Defined tags for this resource. Each key is predefined and scoped to a namespace.
    # For more information, see [Resource Tags](https://docs.cloud.oracle.com/Content/General/Concepts/resourcetags.htm).
    #
    # Example: `{\"Operations\": {\"CostCenter\": \"42\"}}`
    #
    # @return [Hash<String, Hash<String, Object>>]
    attr_accessor :defined_tags

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'id': :'id',
        'compartment_id': :'compartmentId',
        'target_compartment_id': :'targetCompartmentId',
        'display_name': :'displayName',
        'description': :'description',
        'amount': :'amount',
        'reset_period': :'resetPeriod',
        'target_type': :'targetType',
        'targets': :'targets',
        'lifecycle_state': :'lifecycleState',
        'alert_rule_count': :'alertRuleCount',
        'version': :'version',
        'actual_spend': :'actualSpend',
        'forecasted_spend': :'forecastedSpend',
        'time_spend_computed': :'timeSpendComputed',
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
        'compartment_id': :'String',
        'target_compartment_id': :'String',
        'display_name': :'String',
        'description': :'String',
        'amount': :'Float',
        'reset_period': :'String',
        'target_type': :'String',
        'targets': :'Array<String>',
        'lifecycle_state': :'String',
        'alert_rule_count': :'Integer',
        'version': :'Integer',
        'actual_spend': :'Float',
        'forecasted_spend': :'Float',
        'time_spend_computed': :'DateTime',
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
    # @option attributes [String] :compartment_id The value to assign to the {#compartment_id} property
    # @option attributes [String] :target_compartment_id The value to assign to the {#target_compartment_id} property
    # @option attributes [String] :display_name The value to assign to the {#display_name} property
    # @option attributes [String] :description The value to assign to the {#description} property
    # @option attributes [Float] :amount The value to assign to the {#amount} property
    # @option attributes [String] :reset_period The value to assign to the {#reset_period} property
    # @option attributes [String] :target_type The value to assign to the {#target_type} property
    # @option attributes [Array<String>] :targets The value to assign to the {#targets} property
    # @option attributes [String] :lifecycle_state The value to assign to the {#lifecycle_state} property
    # @option attributes [Integer] :alert_rule_count The value to assign to the {#alert_rule_count} property
    # @option attributes [Integer] :version The value to assign to the {#version} property
    # @option attributes [Float] :actual_spend The value to assign to the {#actual_spend} property
    # @option attributes [Float] :forecasted_spend The value to assign to the {#forecasted_spend} property
    # @option attributes [DateTime] :time_spend_computed The value to assign to the {#time_spend_computed} property
    # @option attributes [DateTime] :time_created The value to assign to the {#time_created} property
    # @option attributes [DateTime] :time_updated The value to assign to the {#time_updated} property
    # @option attributes [Hash<String, String>] :freeform_tags The value to assign to the {#freeform_tags} property
    # @option attributes [Hash<String, Hash<String, Object>>] :defined_tags The value to assign to the {#defined_tags} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.id = attributes[:'id'] if attributes[:'id']

      self.compartment_id = attributes[:'compartmentId'] if attributes[:'compartmentId']

      raise 'You cannot provide both :compartmentId and :compartment_id' if attributes.key?(:'compartmentId') && attributes.key?(:'compartment_id')

      self.compartment_id = attributes[:'compartment_id'] if attributes[:'compartment_id']

      self.target_compartment_id = attributes[:'targetCompartmentId'] if attributes[:'targetCompartmentId']

      raise 'You cannot provide both :targetCompartmentId and :target_compartment_id' if attributes.key?(:'targetCompartmentId') && attributes.key?(:'target_compartment_id')

      self.target_compartment_id = attributes[:'target_compartment_id'] if attributes[:'target_compartment_id']

      self.display_name = attributes[:'displayName'] if attributes[:'displayName']

      raise 'You cannot provide both :displayName and :display_name' if attributes.key?(:'displayName') && attributes.key?(:'display_name')

      self.display_name = attributes[:'display_name'] if attributes[:'display_name']

      self.description = attributes[:'description'] if attributes[:'description']

      self.amount = attributes[:'amount'] if attributes[:'amount']

      self.reset_period = attributes[:'resetPeriod'] if attributes[:'resetPeriod']

      raise 'You cannot provide both :resetPeriod and :reset_period' if attributes.key?(:'resetPeriod') && attributes.key?(:'reset_period')

      self.reset_period = attributes[:'reset_period'] if attributes[:'reset_period']

      self.target_type = attributes[:'targetType'] if attributes[:'targetType']

      raise 'You cannot provide both :targetType and :target_type' if attributes.key?(:'targetType') && attributes.key?(:'target_type')

      self.target_type = attributes[:'target_type'] if attributes[:'target_type']

      self.targets = attributes[:'targets'] if attributes[:'targets']

      self.lifecycle_state = attributes[:'lifecycleState'] if attributes[:'lifecycleState']

      raise 'You cannot provide both :lifecycleState and :lifecycle_state' if attributes.key?(:'lifecycleState') && attributes.key?(:'lifecycle_state')

      self.lifecycle_state = attributes[:'lifecycle_state'] if attributes[:'lifecycle_state']

      self.alert_rule_count = attributes[:'alertRuleCount'] if attributes[:'alertRuleCount']

      raise 'You cannot provide both :alertRuleCount and :alert_rule_count' if attributes.key?(:'alertRuleCount') && attributes.key?(:'alert_rule_count')

      self.alert_rule_count = attributes[:'alert_rule_count'] if attributes[:'alert_rule_count']

      self.version = attributes[:'version'] if attributes[:'version']

      self.actual_spend = attributes[:'actualSpend'] if attributes[:'actualSpend']

      raise 'You cannot provide both :actualSpend and :actual_spend' if attributes.key?(:'actualSpend') && attributes.key?(:'actual_spend')

      self.actual_spend = attributes[:'actual_spend'] if attributes[:'actual_spend']

      self.forecasted_spend = attributes[:'forecastedSpend'] if attributes[:'forecastedSpend']

      raise 'You cannot provide both :forecastedSpend and :forecasted_spend' if attributes.key?(:'forecastedSpend') && attributes.key?(:'forecasted_spend')

      self.forecasted_spend = attributes[:'forecasted_spend'] if attributes[:'forecasted_spend']

      self.time_spend_computed = attributes[:'timeSpendComputed'] if attributes[:'timeSpendComputed']

      raise 'You cannot provide both :timeSpendComputed and :time_spend_computed' if attributes.key?(:'timeSpendComputed') && attributes.key?(:'time_spend_computed')

      self.time_spend_computed = attributes[:'time_spend_computed'] if attributes[:'time_spend_computed']

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
    # @param [Object] reset_period Object to be assigned
    def reset_period=(reset_period)
      # rubocop:disable Style/ConditionalAssignment
      if reset_period && !RESET_PERIOD_ENUM.include?(reset_period)
        OCI.logger.debug("Unknown value for 'reset_period' [" + reset_period + "]. Mapping to 'RESET_PERIOD_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @reset_period = RESET_PERIOD_UNKNOWN_ENUM_VALUE
      else
        @reset_period = reset_period
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] target_type Object to be assigned
    def target_type=(target_type)
      # rubocop:disable Style/ConditionalAssignment
      if target_type && !TARGET_TYPE_ENUM.include?(target_type)
        OCI.logger.debug("Unknown value for 'target_type' [" + target_type + "]. Mapping to 'TARGET_TYPE_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @target_type = TARGET_TYPE_UNKNOWN_ENUM_VALUE
      else
        @target_type = target_type
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
        compartment_id == other.compartment_id &&
        target_compartment_id == other.target_compartment_id &&
        display_name == other.display_name &&
        description == other.description &&
        amount == other.amount &&
        reset_period == other.reset_period &&
        target_type == other.target_type &&
        targets == other.targets &&
        lifecycle_state == other.lifecycle_state &&
        alert_rule_count == other.alert_rule_count &&
        version == other.version &&
        actual_spend == other.actual_spend &&
        forecasted_spend == other.forecasted_spend &&
        time_spend_computed == other.time_spend_computed &&
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
      [id, compartment_id, target_compartment_id, display_name, description, amount, reset_period, target_type, targets, lifecycle_state, alert_rule_count, version, actual_spend, forecasted_spend, time_spend_computed, time_created, time_updated, freeform_tags, defined_tags].hash
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
