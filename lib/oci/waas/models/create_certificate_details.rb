# Copyright (c) 2016, 2019, Oracle and/or its affiliates. All rights reserved.

require 'date'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # The data used to create a new SSL certificate.
  #
  # **Warning:** Oracle recommends that you avoid using any confidential information when you supply string values using the API.
  class Waas::Models::CreateCertificateDetails
    # **[Required]** The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the compartment in which to create the SSL certificate.
    # @return [String]
    attr_accessor :compartment_id

    # A user-friendly name for the SSL certificate. The name can be changed and does not need to be unique.
    # @return [String]
    attr_accessor :display_name

    # **[Required]** The data of the SSL certificate.
    # @return [String]
    attr_accessor :certificate_data

    # **[Required]** The private key of the SSL certificate.
    # @return [String]
    attr_accessor :private_key_data

    # Set to true if the SSL certificate is self-signed.
    # @return [BOOLEAN]
    attr_accessor :is_trust_verification_disabled

    # Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/Content/General/Concepts/resourcetags.htm).
    # @return [Hash<String, String>]
    attr_accessor :freeform_tags

    # Defined tags for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/Content/General/Concepts/resourcetags.htm). Example:
    # @return [Hash<String, Hash<String, Object>>]
    attr_accessor :defined_tags

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'compartment_id': :'compartmentId',
        'display_name': :'displayName',
        'certificate_data': :'certificateData',
        'private_key_data': :'privateKeyData',
        'is_trust_verification_disabled': :'isTrustVerificationDisabled',
        'freeform_tags': :'freeformTags',
        'defined_tags': :'definedTags'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'compartment_id': :'String',
        'display_name': :'String',
        'certificate_data': :'String',
        'private_key_data': :'String',
        'is_trust_verification_disabled': :'BOOLEAN',
        'freeform_tags': :'Hash<String, String>',
        'defined_tags': :'Hash<String, Hash<String, Object>>'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :compartment_id The value to assign to the {#compartment_id} property
    # @option attributes [String] :display_name The value to assign to the {#display_name} property
    # @option attributes [String] :certificate_data The value to assign to the {#certificate_data} property
    # @option attributes [String] :private_key_data The value to assign to the {#private_key_data} property
    # @option attributes [BOOLEAN] :is_trust_verification_disabled The value to assign to the {#is_trust_verification_disabled} property
    # @option attributes [Hash<String, String>] :freeform_tags The value to assign to the {#freeform_tags} property
    # @option attributes [Hash<String, Hash<String, Object>>] :defined_tags The value to assign to the {#defined_tags} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.compartment_id = attributes[:'compartmentId'] if attributes[:'compartmentId']

      raise 'You cannot provide both :compartmentId and :compartment_id' if attributes.key?(:'compartmentId') && attributes.key?(:'compartment_id')

      self.compartment_id = attributes[:'compartment_id'] if attributes[:'compartment_id']

      self.display_name = attributes[:'displayName'] if attributes[:'displayName']

      raise 'You cannot provide both :displayName and :display_name' if attributes.key?(:'displayName') && attributes.key?(:'display_name')

      self.display_name = attributes[:'display_name'] if attributes[:'display_name']

      self.certificate_data = attributes[:'certificateData'] if attributes[:'certificateData']

      raise 'You cannot provide both :certificateData and :certificate_data' if attributes.key?(:'certificateData') && attributes.key?(:'certificate_data')

      self.certificate_data = attributes[:'certificate_data'] if attributes[:'certificate_data']

      self.private_key_data = attributes[:'privateKeyData'] if attributes[:'privateKeyData']

      raise 'You cannot provide both :privateKeyData and :private_key_data' if attributes.key?(:'privateKeyData') && attributes.key?(:'private_key_data')

      self.private_key_data = attributes[:'private_key_data'] if attributes[:'private_key_data']

      self.is_trust_verification_disabled = attributes[:'isTrustVerificationDisabled'] unless attributes[:'isTrustVerificationDisabled'].nil?
      self.is_trust_verification_disabled = false if is_trust_verification_disabled.nil? && !attributes.key?(:'isTrustVerificationDisabled') # rubocop:disable Style/StringLiterals

      raise 'You cannot provide both :isTrustVerificationDisabled and :is_trust_verification_disabled' if attributes.key?(:'isTrustVerificationDisabled') && attributes.key?(:'is_trust_verification_disabled')

      self.is_trust_verification_disabled = attributes[:'is_trust_verification_disabled'] unless attributes[:'is_trust_verification_disabled'].nil?
      self.is_trust_verification_disabled = false if is_trust_verification_disabled.nil? && !attributes.key?(:'isTrustVerificationDisabled') && !attributes.key?(:'is_trust_verification_disabled') # rubocop:disable Style/StringLiterals

      self.freeform_tags = attributes[:'freeformTags'] if attributes[:'freeformTags']

      raise 'You cannot provide both :freeformTags and :freeform_tags' if attributes.key?(:'freeformTags') && attributes.key?(:'freeform_tags')

      self.freeform_tags = attributes[:'freeform_tags'] if attributes[:'freeform_tags']

      self.defined_tags = attributes[:'definedTags'] if attributes[:'definedTags']

      raise 'You cannot provide both :definedTags and :defined_tags' if attributes.key?(:'definedTags') && attributes.key?(:'defined_tags')

      self.defined_tags = attributes[:'defined_tags'] if attributes[:'defined_tags']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        compartment_id == other.compartment_id &&
        display_name == other.display_name &&
        certificate_data == other.certificate_data &&
        private_key_data == other.private_key_data &&
        is_trust_verification_disabled == other.is_trust_verification_disabled &&
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
      [compartment_id, display_name, certificate_data, private_key_data, is_trust_verification_disabled, freeform_tags, defined_tags].hash
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
