# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.SQLAdmin.V1beta4.Model.DatabaseInstance do
  @moduledoc """
  A Cloud SQL instance resource.

  ## Attributes

  *   `backendType` (*type:* `String.t`, *default:* `nil`) -  *SECOND_GEN*: Cloud SQL database instance. *EXTERNAL*: A database server that is not managed by Google. This property is read-only; use the *tier* property in the *settings* object to determine the database type.
  *   `connectionName` (*type:* `String.t`, *default:* `nil`) - Connection name of the Cloud SQL instance used in connection strings.
  *   `currentDiskSize` (*type:* `String.t`, *default:* `nil`) - The current disk usage of the instance in bytes. This property has been deprecated. Use the "cloudsql.googleapis.com/database/disk/bytes_used" metric in Cloud Monitoring API instead. Please see this announcement for details.
  *   `databaseVersion` (*type:* `String.t`, *default:* `nil`) - The database engine type and version. The *databaseVersion* field cannot be changed after instance creation. MySQL instances: *MYSQL_8_0*, *MYSQL_5_7* (default), or *MYSQL_5_6*. PostgreSQL instances: *POSTGRES_9_6*, *POSTGRES_10*, *POSTGRES_11*, *POSTGRES_12*, or *POSTGRES_13* (default). SQL Server instances: *SQLSERVER_2017_STANDARD* (default), *SQLSERVER_2017_ENTERPRISE*, *SQLSERVER_2017_EXPRESS*, or *SQLSERVER_2017_WEB*.
  *   `diskEncryptionConfiguration` (*type:* `GoogleApi.SQLAdmin.V1beta4.Model.DiskEncryptionConfiguration.t`, *default:* `nil`) - Disk encryption configuration specific to an instance. Applies only to Second Generation instances.
  *   `diskEncryptionStatus` (*type:* `GoogleApi.SQLAdmin.V1beta4.Model.DiskEncryptionStatus.t`, *default:* `nil`) - Disk encryption status specific to an instance. Applies only to Second Generation instances.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - This field is deprecated and will be removed from a future version of the API. Use the *settings.settingsVersion* field instead.
  *   `failoverReplica` (*type:* `GoogleApi.SQLAdmin.V1beta4.Model.DatabaseInstanceFailoverReplica.t`, *default:* `nil`) - The name and status of the failover replica. This property is applicable only to Second Generation instances.
  *   `gceZone` (*type:* `String.t`, *default:* `nil`) - The Compute Engine zone that the instance is currently serving from. This value could be different from the zone that was specified when the instance was created if the instance has failed over to its secondary zone.
  *   `instanceType` (*type:* `String.t`, *default:* `nil`) - The instance type. This can be one of the following. *CLOUD_SQL_INSTANCE*: A Cloud SQL instance that is not replicating from a primary instance. *ON_PREMISES_INSTANCE*: An instance running on the customer's premises. *READ_REPLICA_INSTANCE*: A Cloud SQL instance configured as a read-replica.
  *   `ipAddresses` (*type:* `list(GoogleApi.SQLAdmin.V1beta4.Model.IpMapping.t)`, *default:* `nil`) - The assigned IP addresses for the instance.
  *   `ipv6Address` (*type:* `String.t`, *default:* `nil`) - The IPv6 address assigned to the instance. (Deprecated) This property was applicable only to First Generation instances.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - This is always *sql#instance*.
  *   `masterInstanceName` (*type:* `String.t`, *default:* `nil`) - The name of the instance which will act as primary in the replication setup.
  *   `maxDiskSize` (*type:* `String.t`, *default:* `nil`) - The maximum disk size of the instance in bytes.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the Cloud SQL instance. This does not include the project ID.
  *   `onPremisesConfiguration` (*type:* `GoogleApi.SQLAdmin.V1beta4.Model.OnPremisesConfiguration.t`, *default:* `nil`) - Configuration specific to on-premises instances.
  *   `project` (*type:* `String.t`, *default:* `nil`) - The project ID of the project containing the Cloud SQL instance. The Google apps domain is prefixed if applicable.
  *   `region` (*type:* `String.t`, *default:* `nil`) - The geographical region. Can be *us-central* (*FIRST_GEN* instances only) *us-central1* (*SECOND_GEN* instances only) *asia-east1* or *europe-west1*. Defaults to *us-central* or *us-central1* depending on the instance type. The region cannot be changed after instance creation.
  *   `replicaConfiguration` (*type:* `GoogleApi.SQLAdmin.V1beta4.Model.ReplicaConfiguration.t`, *default:* `nil`) - Configuration specific to failover replicas and read replicas.
  *   `replicaNames` (*type:* `list(String.t)`, *default:* `nil`) - The replicas of the instance.
  *   `rootPassword` (*type:* `String.t`, *default:* `nil`) - Initial root password. Use only on creation.
  *   `satisfiesPzs` (*type:* `boolean()`, *default:* `nil`) - The status indicating if instance satisfiesPzs. Reserved for future use.
  *   `scheduledMaintenance` (*type:* `GoogleApi.SQLAdmin.V1beta4.Model.SqlScheduledMaintenance.t`, *default:* `nil`) - The start time of any upcoming scheduled maintenance for this instance.
  *   `secondaryGceZone` (*type:* `String.t`, *default:* `nil`) - The Compute Engine zone that the failover instance is currently serving from for a regional instance. This value could be different from the zone that was specified when the instance was created if the instance has failed over to its secondary/failover zone. Reserved for future use.
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - The URI of this resource.
  *   `serverCaCert` (*type:* `GoogleApi.SQLAdmin.V1beta4.Model.SslCert.t`, *default:* `nil`) - SSL configuration.
  *   `serviceAccountEmailAddress` (*type:* `String.t`, *default:* `nil`) - The service account email address assigned to the instance. This property is applicable only to Second Generation instances.
  *   `settings` (*type:* `GoogleApi.SQLAdmin.V1beta4.Model.Settings.t`, *default:* `nil`) - The user settings.
  *   `state` (*type:* `String.t`, *default:* `nil`) - The current serving state of the Cloud SQL instance. This can be one of the following. *SQL_INSTANCE_STATE_UNSPECIFIED*: The state of the instance is unknown. *RUNNABLE*: The instance is running, or has been stopped by owner. *SUSPENDED*: The instance is not available, for example due to problems with billing. *PENDING_DELETE*: The instance is being deleted. *PENDING_CREATE*: The instance is being created. *MAINTENANCE*: The instance is down for maintenance. *FAILED*: The instance creation failed.
  *   `suspensionReason` (*type:* `list(String.t)`, *default:* `nil`) - If the instance state is SUSPENDED, the reason for the suspension.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :backendType => String.t() | nil,
          :connectionName => String.t() | nil,
          :currentDiskSize => String.t() | nil,
          :databaseVersion => String.t() | nil,
          :diskEncryptionConfiguration =>
            GoogleApi.SQLAdmin.V1beta4.Model.DiskEncryptionConfiguration.t() | nil,
          :diskEncryptionStatus =>
            GoogleApi.SQLAdmin.V1beta4.Model.DiskEncryptionStatus.t() | nil,
          :etag => String.t() | nil,
          :failoverReplica =>
            GoogleApi.SQLAdmin.V1beta4.Model.DatabaseInstanceFailoverReplica.t() | nil,
          :gceZone => String.t() | nil,
          :instanceType => String.t() | nil,
          :ipAddresses => list(GoogleApi.SQLAdmin.V1beta4.Model.IpMapping.t()) | nil,
          :ipv6Address => String.t() | nil,
          :kind => String.t() | nil,
          :masterInstanceName => String.t() | nil,
          :maxDiskSize => String.t() | nil,
          :name => String.t() | nil,
          :onPremisesConfiguration =>
            GoogleApi.SQLAdmin.V1beta4.Model.OnPremisesConfiguration.t() | nil,
          :project => String.t() | nil,
          :region => String.t() | nil,
          :replicaConfiguration =>
            GoogleApi.SQLAdmin.V1beta4.Model.ReplicaConfiguration.t() | nil,
          :replicaNames => list(String.t()) | nil,
          :rootPassword => String.t() | nil,
          :satisfiesPzs => boolean() | nil,
          :scheduledMaintenance =>
            GoogleApi.SQLAdmin.V1beta4.Model.SqlScheduledMaintenance.t() | nil,
          :secondaryGceZone => String.t() | nil,
          :selfLink => String.t() | nil,
          :serverCaCert => GoogleApi.SQLAdmin.V1beta4.Model.SslCert.t() | nil,
          :serviceAccountEmailAddress => String.t() | nil,
          :settings => GoogleApi.SQLAdmin.V1beta4.Model.Settings.t() | nil,
          :state => String.t() | nil,
          :suspensionReason => list(String.t()) | nil
        }

  field(:backendType)
  field(:connectionName)
  field(:currentDiskSize)
  field(:databaseVersion)

  field(:diskEncryptionConfiguration,
    as: GoogleApi.SQLAdmin.V1beta4.Model.DiskEncryptionConfiguration
  )

  field(:diskEncryptionStatus, as: GoogleApi.SQLAdmin.V1beta4.Model.DiskEncryptionStatus)
  field(:etag)
  field(:failoverReplica, as: GoogleApi.SQLAdmin.V1beta4.Model.DatabaseInstanceFailoverReplica)
  field(:gceZone)
  field(:instanceType)
  field(:ipAddresses, as: GoogleApi.SQLAdmin.V1beta4.Model.IpMapping, type: :list)
  field(:ipv6Address)
  field(:kind)
  field(:masterInstanceName)
  field(:maxDiskSize)
  field(:name)
  field(:onPremisesConfiguration, as: GoogleApi.SQLAdmin.V1beta4.Model.OnPremisesConfiguration)
  field(:project)
  field(:region)
  field(:replicaConfiguration, as: GoogleApi.SQLAdmin.V1beta4.Model.ReplicaConfiguration)
  field(:replicaNames, type: :list)
  field(:rootPassword)
  field(:satisfiesPzs)
  field(:scheduledMaintenance, as: GoogleApi.SQLAdmin.V1beta4.Model.SqlScheduledMaintenance)
  field(:secondaryGceZone)
  field(:selfLink)
  field(:serverCaCert, as: GoogleApi.SQLAdmin.V1beta4.Model.SslCert)
  field(:serviceAccountEmailAddress)
  field(:settings, as: GoogleApi.SQLAdmin.V1beta4.Model.Settings)
  field(:state)
  field(:suspensionReason, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.SQLAdmin.V1beta4.Model.DatabaseInstance do
  def decode(value, options) do
    GoogleApi.SQLAdmin.V1beta4.Model.DatabaseInstance.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SQLAdmin.V1beta4.Model.DatabaseInstance do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
