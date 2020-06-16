# Copyright (c) 2016, 2020, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Details of Item
  # This class has direct subclasses. If you are using this class as input to a service operations then you should favor using a subclass over the base class
  class Cims::Models::Item
    # **[Required]** Unique ID that identifies an Item
    # @return [String]
    attr_accessor :item_key

    # Name of item
    # @return [String]
    attr_accessor :name

    # Type of item. eg: ActivityItem, LimitItem
    # @return [String]
    attr_accessor :type

    # @return [OCI::Cims::Models::Category]
    attr_accessor :category

    # @return [OCI::Cims::Models::SubCategory]
    attr_accessor :sub_category

    # @return [OCI::Cims::Models::IssueType]
    attr_accessor :issue_type

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'item_key': :'itemKey',
        'name': :'name',
        'type': :'type',
        'category': :'category',
        'sub_category': :'subCategory',
        'issue_type': :'issueType'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'item_key': :'String',
        'name': :'String',
        'type': :'String',
        'category': :'OCI::Cims::Models::Category',
        'sub_category': :'OCI::Cims::Models::SubCategory',
        'issue_type': :'OCI::Cims::Models::IssueType'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Layout/EmptyLines, Metrics/PerceivedComplexity, Metrics/AbcSize


    # Given the hash representation of a subtype of this class,
    # use the info in the hash to return the class of the subtype.
    def self.get_subtype(object_hash)
      type = object_hash[:'type'] # rubocop:disable Style/SymbolLiteral

      return 'OCI::Cims::Models::LimitItem' if type == 'limit'
      return 'OCI::Cims::Models::TechSupportItem' if type == 'tech'
      return 'OCI::Cims::Models::ActivityItem' if type == 'activity'

      # TODO: Log a warning when the subtype is not found.
      'OCI::Cims::Models::Item'
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Layout/EmptyLines, Metrics/PerceivedComplexity, Metrics/AbcSize

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :item_key The value to assign to the {#item_key} property
    # @option attributes [String] :name The value to assign to the {#name} property
    # @option attributes [String] :type The value to assign to the {#type} property
    # @option attributes [OCI::Cims::Models::Category] :category The value to assign to the {#category} property
    # @option attributes [OCI::Cims::Models::SubCategory] :sub_category The value to assign to the {#sub_category} property
    # @option attributes [OCI::Cims::Models::IssueType] :issue_type The value to assign to the {#issue_type} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.item_key = attributes[:'itemKey'] if attributes[:'itemKey']

      raise 'You cannot provide both :itemKey and :item_key' if attributes.key?(:'itemKey') && attributes.key?(:'item_key')

      self.item_key = attributes[:'item_key'] if attributes[:'item_key']

      self.name = attributes[:'name'] if attributes[:'name']

      self.type = attributes[:'type'] if attributes[:'type']

      self.category = attributes[:'category'] if attributes[:'category']

      self.sub_category = attributes[:'subCategory'] if attributes[:'subCategory']

      raise 'You cannot provide both :subCategory and :sub_category' if attributes.key?(:'subCategory') && attributes.key?(:'sub_category')

      self.sub_category = attributes[:'sub_category'] if attributes[:'sub_category']

      self.issue_type = attributes[:'issueType'] if attributes[:'issueType']

      raise 'You cannot provide both :issueType and :issue_type' if attributes.key?(:'issueType') && attributes.key?(:'issue_type')

      self.issue_type = attributes[:'issue_type'] if attributes[:'issue_type']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        item_key == other.item_key &&
        name == other.name &&
        type == other.type &&
        category == other.category &&
        sub_category == other.sub_category &&
        issue_type == other.issue_type
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
      [item_key, name, type, category, sub_category, issue_type].hash
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
