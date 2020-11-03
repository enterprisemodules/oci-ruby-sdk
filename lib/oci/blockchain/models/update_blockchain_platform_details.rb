# Copyright (c) 2016, 2021, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Blockchain Platform details for updating a service.
  class Blockchain::Models::UpdateBlockchainPlatformDetails
    # Platform Description
    # @return [String]
    attr_accessor :description

    # Storage size in TBs
    # @return [Float]
    attr_accessor :storage_size_in_tbs

    # @return [OCI::Blockchain::Models::ReplicaDetails]
    attr_accessor :replicas

    # Number of total OCPUs to allocate
    # @return [Integer]
    attr_accessor :total_ocpu_capacity

    # Type of Load Balancer shape - LB_100_MBPS or LB_400_MBPS. Default is LB_100_MBPS.
    # @return [String]
    attr_accessor :load_balancer_shape

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
        'description': :'description',
        'storage_size_in_tbs': :'storageSizeInTBs',
        'replicas': :'replicas',
        'total_ocpu_capacity': :'totalOcpuCapacity',
        'load_balancer_shape': :'loadBalancerShape',
        'freeform_tags': :'freeformTags',
        'defined_tags': :'definedTags'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'description': :'String',
        'storage_size_in_tbs': :'Float',
        'replicas': :'OCI::Blockchain::Models::ReplicaDetails',
        'total_ocpu_capacity': :'Integer',
        'load_balancer_shape': :'String',
        'freeform_tags': :'Hash<String, String>',
        'defined_tags': :'Hash<String, Hash<String, Object>>'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :description The value to assign to the {#description} property
    # @option attributes [Float] :storage_size_in_tbs The value to assign to the {#storage_size_in_tbs} property
    # @option attributes [OCI::Blockchain::Models::ReplicaDetails] :replicas The value to assign to the {#replicas} property
    # @option attributes [Integer] :total_ocpu_capacity The value to assign to the {#total_ocpu_capacity} property
    # @option attributes [String] :load_balancer_shape The value to assign to the {#load_balancer_shape} property
    # @option attributes [Hash<String, String>] :freeform_tags The value to assign to the {#freeform_tags} property
    # @option attributes [Hash<String, Hash<String, Object>>] :defined_tags The value to assign to the {#defined_tags} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.description = attributes[:'description'] if attributes[:'description']

      self.storage_size_in_tbs = attributes[:'storageSizeInTBs'] if attributes[:'storageSizeInTBs']

      raise 'You cannot provide both :storageSizeInTBs and :storage_size_in_tbs' if attributes.key?(:'storageSizeInTBs') && attributes.key?(:'storage_size_in_tbs')

      self.storage_size_in_tbs = attributes[:'storage_size_in_tbs'] if attributes[:'storage_size_in_tbs']

      self.replicas = attributes[:'replicas'] if attributes[:'replicas']

      self.total_ocpu_capacity = attributes[:'totalOcpuCapacity'] if attributes[:'totalOcpuCapacity']

      raise 'You cannot provide both :totalOcpuCapacity and :total_ocpu_capacity' if attributes.key?(:'totalOcpuCapacity') && attributes.key?(:'total_ocpu_capacity')

      self.total_ocpu_capacity = attributes[:'total_ocpu_capacity'] if attributes[:'total_ocpu_capacity']

      self.load_balancer_shape = attributes[:'loadBalancerShape'] if attributes[:'loadBalancerShape']

      raise 'You cannot provide both :loadBalancerShape and :load_balancer_shape' if attributes.key?(:'loadBalancerShape') && attributes.key?(:'load_balancer_shape')

      self.load_balancer_shape = attributes[:'load_balancer_shape'] if attributes[:'load_balancer_shape']

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
        description == other.description &&
        storage_size_in_tbs == other.storage_size_in_tbs &&
        replicas == other.replicas &&
        total_ocpu_capacity == other.total_ocpu_capacity &&
        load_balancer_shape == other.load_balancer_shape &&
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
      [description, storage_size_in_tbs, replicas, total_ocpu_capacity, load_balancer_shape, freeform_tags, defined_tags].hash
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