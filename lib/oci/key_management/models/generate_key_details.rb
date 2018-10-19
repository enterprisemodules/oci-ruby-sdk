# Copyright (c) 2016, 2018, Oracle and/or its affiliates. All rights reserved.

require 'date'

# rubocop:disable Lint/UnneededCopDisableDirective
module OCI
  # GenerateKeyDetails model.
  class KeyManagement::Models::GenerateKeyDetails # rubocop:disable Metrics/LineLength
    # Information that can be used to provide an encryption context for the
    # encrypted data. The length of the string representation of the associatedData
    # must be fewer than 4096 characters.
    #
    # @return [Hash<String, String>]
    attr_accessor :associated_data

    # **[Required]** If true, the generated key is also returned unencrypted.
    # @return [BOOLEAN]
    attr_accessor :include_plaintext_key

    # **[Required]** The OCID of the master encryption key to encrypt the generated data encryption key with.
    # @return [String]
    attr_accessor :key_id

    # This attribute is required.
    # @return [OCI::KeyManagement::Models::KeyShape]
    attr_accessor :key_shape

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'associated_data': :'associatedData',
        'include_plaintext_key': :'includePlaintextKey',
        'key_id': :'keyId',
        'key_shape': :'keyShape'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'associated_data': :'Hash<String, String>',
        'include_plaintext_key': :'BOOLEAN',
        'key_id': :'String',
        'key_shape': :'OCI::KeyManagement::Models::KeyShape'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/LineLength, Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [Hash<String, String>] :associated_data The value to assign to the {#associated_data} property
    # @option attributes [BOOLEAN] :include_plaintext_key The value to assign to the {#include_plaintext_key} property
    # @option attributes [String] :key_id The value to assign to the {#key_id} property
    # @option attributes [OCI::KeyManagement::Models::KeyShape] :key_shape The value to assign to the {#key_shape} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.associated_data = attributes[:'associatedData'] if attributes[:'associatedData']

      raise 'You cannot provide both :associatedData and :associated_data' if attributes.key?(:'associatedData') && attributes.key?(:'associated_data')

      self.associated_data = attributes[:'associated_data'] if attributes[:'associated_data']

      self.include_plaintext_key = attributes[:'includePlaintextKey'] unless attributes[:'includePlaintextKey'].nil?

      raise 'You cannot provide both :includePlaintextKey and :include_plaintext_key' if attributes.key?(:'includePlaintextKey') && attributes.key?(:'include_plaintext_key')

      self.include_plaintext_key = attributes[:'include_plaintext_key'] unless attributes[:'include_plaintext_key'].nil?

      self.key_id = attributes[:'keyId'] if attributes[:'keyId']

      raise 'You cannot provide both :keyId and :key_id' if attributes.key?(:'keyId') && attributes.key?(:'key_id')

      self.key_id = attributes[:'key_id'] if attributes[:'key_id']

      self.key_shape = attributes[:'keyShape'] if attributes[:'keyShape']

      raise 'You cannot provide both :keyShape and :key_shape' if attributes.key?(:'keyShape') && attributes.key?(:'key_shape')

      self.key_shape = attributes[:'key_shape'] if attributes[:'key_shape']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/LineLength, Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Metrics/LineLength, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        associated_data == other.associated_data &&
        include_plaintext_key == other.include_plaintext_key &&
        key_id == other.key_id &&
        key_shape == other.key_shape
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Metrics/LineLength, Layout/EmptyLines

    # @see the `==` method
    # @param [Object] other the other object to be compared
    def eql?(other)
      self == other
    end

    # rubocop:disable Metrics/AbcSize, Metrics/LineLength, Layout/EmptyLines


    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [associated_data, include_plaintext_key, key_id, key_shape].hash
    end
    # rubocop:enable Metrics/AbcSize, Metrics/LineLength, Layout/EmptyLines

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
# rubocop:enable Lint/UnneededCopDisableDirective
