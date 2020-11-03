# Copyright (c) 2016, 2021, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Details about the resource associated with the support request.
  class Cims::Models::IncidentResourceType
    # Unique identifier of the resource.
    # @return [String]
    attr_accessor :resource_type_key

    # The display name of the resource.
    # @return [String]
    attr_accessor :name

    # **[Required]** The label associated with the resource.
    # @return [String]
    attr_accessor :label

    # The description of the resource.
    # @return [String]
    attr_accessor :description

    # The service category list.
    # @return [Array<OCI::Cims::Models::ServiceCategory>]
    attr_accessor :service_category_list

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'resource_type_key': :'resourceTypeKey',
        'name': :'name',
        'label': :'label',
        'description': :'description',
        'service_category_list': :'serviceCategoryList'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'resource_type_key': :'String',
        'name': :'String',
        'label': :'String',
        'description': :'String',
        'service_category_list': :'Array<OCI::Cims::Models::ServiceCategory>'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :resource_type_key The value to assign to the {#resource_type_key} property
    # @option attributes [String] :name The value to assign to the {#name} property
    # @option attributes [String] :label The value to assign to the {#label} property
    # @option attributes [String] :description The value to assign to the {#description} property
    # @option attributes [Array<OCI::Cims::Models::ServiceCategory>] :service_category_list The value to assign to the {#service_category_list} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.resource_type_key = attributes[:'resourceTypeKey'] if attributes[:'resourceTypeKey']

      raise 'You cannot provide both :resourceTypeKey and :resource_type_key' if attributes.key?(:'resourceTypeKey') && attributes.key?(:'resource_type_key')

      self.resource_type_key = attributes[:'resource_type_key'] if attributes[:'resource_type_key']

      self.name = attributes[:'name'] if attributes[:'name']

      self.label = attributes[:'label'] if attributes[:'label']

      self.description = attributes[:'description'] if attributes[:'description']

      self.service_category_list = attributes[:'serviceCategoryList'] if attributes[:'serviceCategoryList']

      raise 'You cannot provide both :serviceCategoryList and :service_category_list' if attributes.key?(:'serviceCategoryList') && attributes.key?(:'service_category_list')

      self.service_category_list = attributes[:'service_category_list'] if attributes[:'service_category_list']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        resource_type_key == other.resource_type_key &&
        name == other.name &&
        label == other.label &&
        description == other.description &&
        service_category_list == other.service_category_list
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
      [resource_type_key, name, label, description, service_category_list].hash
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