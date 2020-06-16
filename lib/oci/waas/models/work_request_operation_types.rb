# Copyright (c) 2016, 2020, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

module OCI
  module Waas::Models
    WORK_REQUEST_OPERATION_TYPES_ENUM = [
      WORK_REQUEST_OPERATION_TYPES_CREATE_WAAS_POLICY = 'CREATE_WAAS_POLICY'.freeze,
      WORK_REQUEST_OPERATION_TYPES_UPDATE_WAAS_POLICY = 'UPDATE_WAAS_POLICY'.freeze,
      WORK_REQUEST_OPERATION_TYPES_DELETE_WAAS_POLICY = 'DELETE_WAAS_POLICY'.freeze,
      WORK_REQUEST_OPERATION_TYPES_CREATE_HTTP_REDIRECT = 'CREATE_HTTP_REDIRECT'.freeze,
      WORK_REQUEST_OPERATION_TYPES_UPDATE_HTTP_REDIRECT = 'UPDATE_HTTP_REDIRECT'.freeze,
      WORK_REQUEST_OPERATION_TYPES_DELETE_HTTP_REDIRECT = 'DELETE_HTTP_REDIRECT'.freeze,
      WORK_REQUEST_OPERATION_TYPES_PURGE_WAAS_POLICY_CACHE = 'PURGE_WAAS_POLICY_CACHE'.freeze,
      WORK_REQUEST_OPERATION_TYPES_CREATE_CUSTOM_PROTECTION_RULE = 'CREATE_CUSTOM_PROTECTION_RULE'.freeze,
      WORK_REQUEST_OPERATION_TYPES_UPDATE_CUSTOM_PROTECTION_RULE = 'UPDATE_CUSTOM_PROTECTION_RULE'.freeze,
      WORK_REQUEST_OPERATION_TYPES_DELETE_CUSTOM_PROTECTION_RULE = 'DELETE_CUSTOM_PROTECTION_RULE'.freeze
    ].freeze
  end
end
