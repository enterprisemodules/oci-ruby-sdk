# Copyright (c) 2016, 2021, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

module OCI
  module Logging::Models
    LOG_GROUP_LIFECYCLE_STATE_ENUM = [
      LOG_GROUP_LIFECYCLE_STATE_CREATING = 'CREATING'.freeze,
      LOG_GROUP_LIFECYCLE_STATE_ACTIVE = 'ACTIVE'.freeze,
      LOG_GROUP_LIFECYCLE_STATE_UPDATING = 'UPDATING'.freeze,
      LOG_GROUP_LIFECYCLE_STATE_INACTIVE = 'INACTIVE'.freeze,
      LOG_GROUP_LIFECYCLE_STATE_DELETING = 'DELETING'.freeze,
      LOG_GROUP_LIFECYCLE_STATE_FAILED = 'FAILED'.freeze
    ].freeze
  end
end