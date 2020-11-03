# Copyright (c) 2016, 2021, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Details for the create cloud VM cluster operation. Applies to Exadata Cloud Service instances only.
  #
  class Database::Models::CreateCloudVmClusterDetails
    LICENSE_MODEL_ENUM = [
      LICENSE_MODEL_LICENSE_INCLUDED = 'LICENSE_INCLUDED'.freeze,
      LICENSE_MODEL_BRING_YOUR_OWN_LICENSE = 'BRING_YOUR_OWN_LICENSE'.freeze
    ].freeze

    # **[Required]** The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the compartment.
    # @return [String]
    attr_accessor :compartment_id

    # **[Required]** The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the subnet associated with the cloud VM cluster.
    #
    # @return [String]
    attr_accessor :subnet_id

    # **[Required]** The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the backup network subnet associated with the cloud VM cluster.
    #
    # @return [String]
    attr_accessor :backup_subnet_id

    # **[Required]** The number of CPU cores to enable for a cloud VM cluster. Valid values depend on the specified shape:
    #
    # - Exadata.Base.48 - Specify a multiple of 2, from 0 to 48.
    # - Exadata.Quarter1.84 - Specify a multiple of 2, from 22 to 84.
    # - Exadata.Half1.168 - Specify a multiple of 4, from 44 to 168.
    # - Exadata.Full1.336 - Specify a multiple of 8, from 88 to 336.
    # - Exadata.Quarter2.92 - Specify a multiple of 2, from 0 to 92.
    # - Exadata.Half2.184 - Specify a multiple of 4, from 0 to 184.
    # - Exadata.Full2.368 - Specify a multiple of 8, from 0 to 368.
    #
    # @return [Integer]
    attr_accessor :cpu_core_count

    # The cluster name for cloud VM cluster. The cluster name must begin with an alphabetic character, and may contain hyphens (-). Underscores (_) are not permitted. The cluster name can be no longer than 11 characters and is not case sensitive.
    #
    # @return [String]
    attr_accessor :cluster_name

    # The percentage assigned to DATA storage (user data and database files).
    # The remaining percentage is assigned to RECO storage (database redo logs, archive logs, and recovery manager backups). Accepted values are 35, 40, 60 and 80. The default is 80 percent assigned to DATA storage. See [Storage Configuration](https://docs.cloud.oracle.com/Content/Database/Concepts/exaoverview.htm#Exadata) in the Exadata documentation for details on the impact of the configuration settings on storage.
    #
    # @return [Integer]
    attr_accessor :data_storage_percentage

    # **[Required]** The user-friendly name for the cloud VM cluster. The name does not need to be unique.
    # @return [String]
    attr_accessor :display_name

    # **[Required]** The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the cloud Exadata infrastructure resource.
    # @return [String]
    attr_accessor :cloud_exadata_infrastructure_id

    # **[Required]** The hostname for the cloud VM cluster. The hostname must begin with an alphabetic character, and
    # can contain alphanumeric characters and hyphens (-). The maximum length of the hostname is 16 characters for bare metal and virtual machine DB systems, and 12 characters for Exadata systems.
    #
    # The maximum length of the combined hostname and domain is 63 characters.
    #
    # **Note:** The hostname must be unique within the subnet. If it is not unique,
    # the cloud VM Cluster will fail to provision.
    #
    # @return [String]
    attr_accessor :hostname

    # A domain name used for the cloud VM cluster. If the Oracle-provided internet and VCN
    # resolver is enabled for the specified subnet, the domain name for the subnet is used
    # (do not provide one). Otherwise, provide a valid DNS domain name. Hyphens (-) are not permitted.
    # Applies to Exadata Cloud Service instances only.
    #
    # @return [String]
    attr_accessor :domain

    # **[Required]** The public key portion of one or more key pairs used for SSH access to the cloud VM cluster.
    # @return [Array<String>]
    attr_accessor :ssh_public_keys

    # The Oracle license model that applies to the cloud VM cluster. The default is BRING_YOUR_OWN_LICENSE.
    #
    # @return [String]
    attr_reader :license_model

    # If true, the sparse disk group is configured for the cloud VM cluster. If false, the sparse disk group is not created.
    #
    # @return [BOOLEAN]
    attr_accessor :is_sparse_diskgroup_enabled

    # If true, database backup on local Exadata storage is configured for the cloud VM cluster. If false, database backup on local Exadata storage is not available in the cloud VM cluster.
    #
    # @return [BOOLEAN]
    attr_accessor :is_local_backup_enabled

    # The time zone to use for the cloud VM cluster. For details, see [Time Zones](https://docs.cloud.oracle.com/Content/Database/References/timezones.htm).
    #
    # @return [String]
    attr_accessor :time_zone

    # A list of the [OCIDs](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the network security groups (NSGs) that this resource belongs to. Setting this to an empty array after the list is created removes the resource from all NSGs. For more information about NSGs, see [Security Rules](https://docs.cloud.oracle.com/Content/Network/Concepts/securityrules.htm).
    # **NsgIds restrictions:**
    # - Autonomous Databases with private access require at least 1 Network Security Group (NSG). The nsgIds array cannot be empty.
    #
    # @return [Array<String>]
    attr_accessor :nsg_ids

    # A list of the [OCIDs](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the network security groups (NSGs) that the backup network of this DB system belongs to. Setting this to an empty array after the list is created removes the resource from all NSGs. For more information about NSGs, see [Security Rules](https://docs.cloud.oracle.com/Content/Network/Concepts/securityrules.htm). Applicable only to Exadata systems.
    #
    # @return [Array<String>]
    attr_accessor :backup_network_nsg_ids

    # **[Required]** A valid Oracle Grid Infrastructure (GI) software version.
    # @return [String]
    attr_accessor :gi_version

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
    # @return [Hash<String, Hash<String, Object>>]
    attr_accessor :defined_tags

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'compartment_id': :'compartmentId',
        'subnet_id': :'subnetId',
        'backup_subnet_id': :'backupSubnetId',
        'cpu_core_count': :'cpuCoreCount',
        'cluster_name': :'clusterName',
        'data_storage_percentage': :'dataStoragePercentage',
        'display_name': :'displayName',
        'cloud_exadata_infrastructure_id': :'cloudExadataInfrastructureId',
        'hostname': :'hostname',
        'domain': :'domain',
        'ssh_public_keys': :'sshPublicKeys',
        'license_model': :'licenseModel',
        'is_sparse_diskgroup_enabled': :'isSparseDiskgroupEnabled',
        'is_local_backup_enabled': :'isLocalBackupEnabled',
        'time_zone': :'timeZone',
        'nsg_ids': :'nsgIds',
        'backup_network_nsg_ids': :'backupNetworkNsgIds',
        'gi_version': :'giVersion',
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
        'subnet_id': :'String',
        'backup_subnet_id': :'String',
        'cpu_core_count': :'Integer',
        'cluster_name': :'String',
        'data_storage_percentage': :'Integer',
        'display_name': :'String',
        'cloud_exadata_infrastructure_id': :'String',
        'hostname': :'String',
        'domain': :'String',
        'ssh_public_keys': :'Array<String>',
        'license_model': :'String',
        'is_sparse_diskgroup_enabled': :'BOOLEAN',
        'is_local_backup_enabled': :'BOOLEAN',
        'time_zone': :'String',
        'nsg_ids': :'Array<String>',
        'backup_network_nsg_ids': :'Array<String>',
        'gi_version': :'String',
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
    # @option attributes [String] :subnet_id The value to assign to the {#subnet_id} property
    # @option attributes [String] :backup_subnet_id The value to assign to the {#backup_subnet_id} property
    # @option attributes [Integer] :cpu_core_count The value to assign to the {#cpu_core_count} property
    # @option attributes [String] :cluster_name The value to assign to the {#cluster_name} property
    # @option attributes [Integer] :data_storage_percentage The value to assign to the {#data_storage_percentage} property
    # @option attributes [String] :display_name The value to assign to the {#display_name} property
    # @option attributes [String] :cloud_exadata_infrastructure_id The value to assign to the {#cloud_exadata_infrastructure_id} property
    # @option attributes [String] :hostname The value to assign to the {#hostname} property
    # @option attributes [String] :domain The value to assign to the {#domain} property
    # @option attributes [Array<String>] :ssh_public_keys The value to assign to the {#ssh_public_keys} property
    # @option attributes [String] :license_model The value to assign to the {#license_model} property
    # @option attributes [BOOLEAN] :is_sparse_diskgroup_enabled The value to assign to the {#is_sparse_diskgroup_enabled} property
    # @option attributes [BOOLEAN] :is_local_backup_enabled The value to assign to the {#is_local_backup_enabled} property
    # @option attributes [String] :time_zone The value to assign to the {#time_zone} property
    # @option attributes [Array<String>] :nsg_ids The value to assign to the {#nsg_ids} property
    # @option attributes [Array<String>] :backup_network_nsg_ids The value to assign to the {#backup_network_nsg_ids} property
    # @option attributes [String] :gi_version The value to assign to the {#gi_version} property
    # @option attributes [Hash<String, String>] :freeform_tags The value to assign to the {#freeform_tags} property
    # @option attributes [Hash<String, Hash<String, Object>>] :defined_tags The value to assign to the {#defined_tags} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.compartment_id = attributes[:'compartmentId'] if attributes[:'compartmentId']

      raise 'You cannot provide both :compartmentId and :compartment_id' if attributes.key?(:'compartmentId') && attributes.key?(:'compartment_id')

      self.compartment_id = attributes[:'compartment_id'] if attributes[:'compartment_id']

      self.subnet_id = attributes[:'subnetId'] if attributes[:'subnetId']

      raise 'You cannot provide both :subnetId and :subnet_id' if attributes.key?(:'subnetId') && attributes.key?(:'subnet_id')

      self.subnet_id = attributes[:'subnet_id'] if attributes[:'subnet_id']

      self.backup_subnet_id = attributes[:'backupSubnetId'] if attributes[:'backupSubnetId']

      raise 'You cannot provide both :backupSubnetId and :backup_subnet_id' if attributes.key?(:'backupSubnetId') && attributes.key?(:'backup_subnet_id')

      self.backup_subnet_id = attributes[:'backup_subnet_id'] if attributes[:'backup_subnet_id']

      self.cpu_core_count = attributes[:'cpuCoreCount'] if attributes[:'cpuCoreCount']

      raise 'You cannot provide both :cpuCoreCount and :cpu_core_count' if attributes.key?(:'cpuCoreCount') && attributes.key?(:'cpu_core_count')

      self.cpu_core_count = attributes[:'cpu_core_count'] if attributes[:'cpu_core_count']

      self.cluster_name = attributes[:'clusterName'] if attributes[:'clusterName']

      raise 'You cannot provide both :clusterName and :cluster_name' if attributes.key?(:'clusterName') && attributes.key?(:'cluster_name')

      self.cluster_name = attributes[:'cluster_name'] if attributes[:'cluster_name']

      self.data_storage_percentage = attributes[:'dataStoragePercentage'] if attributes[:'dataStoragePercentage']

      raise 'You cannot provide both :dataStoragePercentage and :data_storage_percentage' if attributes.key?(:'dataStoragePercentage') && attributes.key?(:'data_storage_percentage')

      self.data_storage_percentage = attributes[:'data_storage_percentage'] if attributes[:'data_storage_percentage']

      self.display_name = attributes[:'displayName'] if attributes[:'displayName']

      raise 'You cannot provide both :displayName and :display_name' if attributes.key?(:'displayName') && attributes.key?(:'display_name')

      self.display_name = attributes[:'display_name'] if attributes[:'display_name']

      self.cloud_exadata_infrastructure_id = attributes[:'cloudExadataInfrastructureId'] if attributes[:'cloudExadataInfrastructureId']

      raise 'You cannot provide both :cloudExadataInfrastructureId and :cloud_exadata_infrastructure_id' if attributes.key?(:'cloudExadataInfrastructureId') && attributes.key?(:'cloud_exadata_infrastructure_id')

      self.cloud_exadata_infrastructure_id = attributes[:'cloud_exadata_infrastructure_id'] if attributes[:'cloud_exadata_infrastructure_id']

      self.hostname = attributes[:'hostname'] if attributes[:'hostname']

      self.domain = attributes[:'domain'] if attributes[:'domain']

      self.ssh_public_keys = attributes[:'sshPublicKeys'] if attributes[:'sshPublicKeys']

      raise 'You cannot provide both :sshPublicKeys and :ssh_public_keys' if attributes.key?(:'sshPublicKeys') && attributes.key?(:'ssh_public_keys')

      self.ssh_public_keys = attributes[:'ssh_public_keys'] if attributes[:'ssh_public_keys']

      self.license_model = attributes[:'licenseModel'] if attributes[:'licenseModel']

      raise 'You cannot provide both :licenseModel and :license_model' if attributes.key?(:'licenseModel') && attributes.key?(:'license_model')

      self.license_model = attributes[:'license_model'] if attributes[:'license_model']

      self.is_sparse_diskgroup_enabled = attributes[:'isSparseDiskgroupEnabled'] unless attributes[:'isSparseDiskgroupEnabled'].nil?

      raise 'You cannot provide both :isSparseDiskgroupEnabled and :is_sparse_diskgroup_enabled' if attributes.key?(:'isSparseDiskgroupEnabled') && attributes.key?(:'is_sparse_diskgroup_enabled')

      self.is_sparse_diskgroup_enabled = attributes[:'is_sparse_diskgroup_enabled'] unless attributes[:'is_sparse_diskgroup_enabled'].nil?

      self.is_local_backup_enabled = attributes[:'isLocalBackupEnabled'] unless attributes[:'isLocalBackupEnabled'].nil?

      raise 'You cannot provide both :isLocalBackupEnabled and :is_local_backup_enabled' if attributes.key?(:'isLocalBackupEnabled') && attributes.key?(:'is_local_backup_enabled')

      self.is_local_backup_enabled = attributes[:'is_local_backup_enabled'] unless attributes[:'is_local_backup_enabled'].nil?

      self.time_zone = attributes[:'timeZone'] if attributes[:'timeZone']

      raise 'You cannot provide both :timeZone and :time_zone' if attributes.key?(:'timeZone') && attributes.key?(:'time_zone')

      self.time_zone = attributes[:'time_zone'] if attributes[:'time_zone']

      self.nsg_ids = attributes[:'nsgIds'] if attributes[:'nsgIds']

      raise 'You cannot provide both :nsgIds and :nsg_ids' if attributes.key?(:'nsgIds') && attributes.key?(:'nsg_ids')

      self.nsg_ids = attributes[:'nsg_ids'] if attributes[:'nsg_ids']

      self.backup_network_nsg_ids = attributes[:'backupNetworkNsgIds'] if attributes[:'backupNetworkNsgIds']

      raise 'You cannot provide both :backupNetworkNsgIds and :backup_network_nsg_ids' if attributes.key?(:'backupNetworkNsgIds') && attributes.key?(:'backup_network_nsg_ids')

      self.backup_network_nsg_ids = attributes[:'backup_network_nsg_ids'] if attributes[:'backup_network_nsg_ids']

      self.gi_version = attributes[:'giVersion'] if attributes[:'giVersion']

      raise 'You cannot provide both :giVersion and :gi_version' if attributes.key?(:'giVersion') && attributes.key?(:'gi_version')

      self.gi_version = attributes[:'gi_version'] if attributes[:'gi_version']

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
    # @param [Object] license_model Object to be assigned
    def license_model=(license_model)
      raise "Invalid value for 'license_model': this must be one of the values in LICENSE_MODEL_ENUM." if license_model && !LICENSE_MODEL_ENUM.include?(license_model)

      @license_model = license_model
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        compartment_id == other.compartment_id &&
        subnet_id == other.subnet_id &&
        backup_subnet_id == other.backup_subnet_id &&
        cpu_core_count == other.cpu_core_count &&
        cluster_name == other.cluster_name &&
        data_storage_percentage == other.data_storage_percentage &&
        display_name == other.display_name &&
        cloud_exadata_infrastructure_id == other.cloud_exadata_infrastructure_id &&
        hostname == other.hostname &&
        domain == other.domain &&
        ssh_public_keys == other.ssh_public_keys &&
        license_model == other.license_model &&
        is_sparse_diskgroup_enabled == other.is_sparse_diskgroup_enabled &&
        is_local_backup_enabled == other.is_local_backup_enabled &&
        time_zone == other.time_zone &&
        nsg_ids == other.nsg_ids &&
        backup_network_nsg_ids == other.backup_network_nsg_ids &&
        gi_version == other.gi_version &&
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
      [compartment_id, subnet_id, backup_subnet_id, cpu_core_count, cluster_name, data_storage_percentage, display_name, cloud_exadata_infrastructure_id, hostname, domain, ssh_public_keys, license_model, is_sparse_diskgroup_enabled, is_local_backup_enabled, time_zone, nsg_ids, backup_network_nsg_ids, gi_version, freeform_tags, defined_tags].hash
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