# Copyright (c) 2016, 2021, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Options for tuning the compatibility and performance of VM shapes.
  #
  class Core::Models::UpdateLaunchOptions
    BOOT_VOLUME_TYPE_ENUM = [
      BOOT_VOLUME_TYPE_ISCSI = 'ISCSI'.freeze,
      BOOT_VOLUME_TYPE_PARAVIRTUALIZED = 'PARAVIRTUALIZED'.freeze
    ].freeze

    NETWORK_TYPE_ENUM = [
      NETWORK_TYPE_VFIO = 'VFIO'.freeze,
      NETWORK_TYPE_PARAVIRTUALIZED = 'PARAVIRTUALIZED'.freeze
    ].freeze

    # Emulation type for the boot volume.
    # * `ISCSI` - ISCSI attached block storage device.
    # * `PARAVIRTUALIZED` - Paravirtualized disk. This is the default for boot volumes and remote block
    # storage volumes on Oracle-provided plaform images.
    #
    # Before you change the boot volume attachment type, detach all block volumes and VNICs except for
    # the boot volume and the primary VNIC.
    #
    # If the instance is running when you change the boot volume attachment type, it will be rebooted.
    #
    # **Note:** Some instances might not function properly if you change the boot volume attachment type. After
    # the instance reboots and is running, connect to it. If the connection fails or the OS doesn't behave
    # as expected, the changes are not supported. Revert the instance to the original boot volume attachment type.
    #
    # @return [String]
    attr_reader :boot_volume_type

    # Emulation type for the physical network interface card (NIC).
    # * `VFIO` - Direct attached Virtual Function network controller. This is the networking type
    # when you launch an instance using hardware-assisted (SR-IOV) networking.
    # * `PARAVIRTUALIZED` - VM instances launch with paravirtualized devices using VirtIO drivers.
    #
    # Before you change the networking type, detach all VNICs and block volumes except for the primary
    # VNIC and the boot volume.
    #
    # The image must have paravirtualized drivers installed. For more information, see
    # [Editing an Instance](https://docs.cloud.oracle.com/iaas/Content/Compute/Tasks/resizinginstances.htm).
    #
    # If the instance is running when you change the network type, it will be rebooted.
    #
    # **Note:** Some instances might not function properly if you change the networking type. After
    # the instance reboots and is running, connect to it. If the connection fails or the OS doesn't behave
    # as expected, the changes are not supported. Revert the instance to the original networking type.
    #
    # @return [String]
    attr_reader :network_type

    # Whether to enable in-transit encryption for the volume's paravirtualized attachment.
    # To enable in-transit encryption for block volumes and boot volumes, this field must be set to `true`.
    #
    # Data in transit is transferred over an internal and highly secure network. If you have specific
    # compliance requirements related to the encryption of the data while it is moving between the
    # instance and the boot volume or the block volume, you can enable in-transit encryption.
    # In-transit encryption is not enabled by default.
    #
    # All boot volumes and block volumes are encrypted at rest.
    #
    # For more information, see [Block Volume Encryption](https://docs.cloud.oracle.com/iaas/Content/Block/Concepts/overview.htm#Encrypti).
    #
    # @return [BOOLEAN]
    attr_accessor :is_pv_encryption_in_transit_enabled

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'boot_volume_type': :'bootVolumeType',
        'network_type': :'networkType',
        'is_pv_encryption_in_transit_enabled': :'isPvEncryptionInTransitEnabled'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'boot_volume_type': :'String',
        'network_type': :'String',
        'is_pv_encryption_in_transit_enabled': :'BOOLEAN'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :boot_volume_type The value to assign to the {#boot_volume_type} property
    # @option attributes [String] :network_type The value to assign to the {#network_type} property
    # @option attributes [BOOLEAN] :is_pv_encryption_in_transit_enabled The value to assign to the {#is_pv_encryption_in_transit_enabled} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.boot_volume_type = attributes[:'bootVolumeType'] if attributes[:'bootVolumeType']

      raise 'You cannot provide both :bootVolumeType and :boot_volume_type' if attributes.key?(:'bootVolumeType') && attributes.key?(:'boot_volume_type')

      self.boot_volume_type = attributes[:'boot_volume_type'] if attributes[:'boot_volume_type']

      self.network_type = attributes[:'networkType'] if attributes[:'networkType']

      raise 'You cannot provide both :networkType and :network_type' if attributes.key?(:'networkType') && attributes.key?(:'network_type')

      self.network_type = attributes[:'network_type'] if attributes[:'network_type']

      self.is_pv_encryption_in_transit_enabled = attributes[:'isPvEncryptionInTransitEnabled'] unless attributes[:'isPvEncryptionInTransitEnabled'].nil?

      raise 'You cannot provide both :isPvEncryptionInTransitEnabled and :is_pv_encryption_in_transit_enabled' if attributes.key?(:'isPvEncryptionInTransitEnabled') && attributes.key?(:'is_pv_encryption_in_transit_enabled')

      self.is_pv_encryption_in_transit_enabled = attributes[:'is_pv_encryption_in_transit_enabled'] unless attributes[:'is_pv_encryption_in_transit_enabled'].nil?
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] boot_volume_type Object to be assigned
    def boot_volume_type=(boot_volume_type)
      raise "Invalid value for 'boot_volume_type': this must be one of the values in BOOT_VOLUME_TYPE_ENUM." if boot_volume_type && !BOOT_VOLUME_TYPE_ENUM.include?(boot_volume_type)

      @boot_volume_type = boot_volume_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] network_type Object to be assigned
    def network_type=(network_type)
      raise "Invalid value for 'network_type': this must be one of the values in NETWORK_TYPE_ENUM." if network_type && !NETWORK_TYPE_ENUM.include?(network_type)

      @network_type = network_type
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        boot_volume_type == other.boot_volume_type &&
        network_type == other.network_type &&
        is_pv_encryption_in_transit_enabled == other.is_pv_encryption_in_transit_enabled
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
      [boot_volume_type, network_type, is_pv_encryption_in_transit_enabled].hash
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