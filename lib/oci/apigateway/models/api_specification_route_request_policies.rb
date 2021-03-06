# Copyright (c) 2016, 2021, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Behavior applied to any requests received by the API on this route.
  #
  class Apigateway::Models::ApiSpecificationRouteRequestPolicies
    # @return [OCI::Apigateway::Models::RouteAuthorizationPolicy]
    attr_accessor :authorization

    # @return [OCI::Apigateway::Models::CorsPolicy]
    attr_accessor :cors

    # @return [OCI::Apigateway::Models::HeaderTransformationPolicy]
    attr_accessor :header_transformations

    # @return [OCI::Apigateway::Models::QueryParameterTransformationPolicy]
    attr_accessor :query_parameter_transformations

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'authorization': :'authorization',
        'cors': :'cors',
        'header_transformations': :'headerTransformations',
        'query_parameter_transformations': :'queryParameterTransformations'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'authorization': :'OCI::Apigateway::Models::RouteAuthorizationPolicy',
        'cors': :'OCI::Apigateway::Models::CorsPolicy',
        'header_transformations': :'OCI::Apigateway::Models::HeaderTransformationPolicy',
        'query_parameter_transformations': :'OCI::Apigateway::Models::QueryParameterTransformationPolicy'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [OCI::Apigateway::Models::RouteAuthorizationPolicy] :authorization The value to assign to the {#authorization} property
    # @option attributes [OCI::Apigateway::Models::CorsPolicy] :cors The value to assign to the {#cors} property
    # @option attributes [OCI::Apigateway::Models::HeaderTransformationPolicy] :header_transformations The value to assign to the {#header_transformations} property
    # @option attributes [OCI::Apigateway::Models::QueryParameterTransformationPolicy] :query_parameter_transformations The value to assign to the {#query_parameter_transformations} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.authorization = attributes[:'authorization'] if attributes[:'authorization']

      self.cors = attributes[:'cors'] if attributes[:'cors']

      self.header_transformations = attributes[:'headerTransformations'] if attributes[:'headerTransformations']

      raise 'You cannot provide both :headerTransformations and :header_transformations' if attributes.key?(:'headerTransformations') && attributes.key?(:'header_transformations')

      self.header_transformations = attributes[:'header_transformations'] if attributes[:'header_transformations']

      self.query_parameter_transformations = attributes[:'queryParameterTransformations'] if attributes[:'queryParameterTransformations']

      raise 'You cannot provide both :queryParameterTransformations and :query_parameter_transformations' if attributes.key?(:'queryParameterTransformations') && attributes.key?(:'query_parameter_transformations')

      self.query_parameter_transformations = attributes[:'query_parameter_transformations'] if attributes[:'query_parameter_transformations']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        authorization == other.authorization &&
        cors == other.cors &&
        header_transformations == other.header_transformations &&
        query_parameter_transformations == other.query_parameter_transformations
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
      [authorization, cors, header_transformations, query_parameter_transformations].hash
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
