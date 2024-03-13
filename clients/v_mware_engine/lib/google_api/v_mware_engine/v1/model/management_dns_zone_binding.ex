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

defmodule GoogleApi.VMwareEngine.V1.Model.ManagementDnsZoneBinding do
  @moduledoc """
  Represents a binding between a network and the management DNS zone. A management DNS zone is the Cloud DNS cross-project binding zone that VMware Engine creates for each private cloud. It contains FQDNs and corresponding IP addresses for the private cloud's ESXi hosts and management VM appliances like vCenter and NSX Manager.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Creation time of this resource.
  *   `description` (*type:* `String.t`, *default:* `nil`) - User-provided description for this resource.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name of this binding. Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names. For example: `projects/my-project/locations/us-central1-a/privateClouds/my-cloud/managementDnsZoneBindings/my-management-dns-zone-binding`
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The state of the resource.
  *   `uid` (*type:* `String.t`, *default:* `nil`) - Output only. System-generated unique identifier for the resource.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Last update time of this resource.
  *   `vmwareEngineNetwork` (*type:* `String.t`, *default:* `nil`) - Network to bind is a VMware Engine network. Specify the name in the following form for VMware engine network: `projects/{project}/locations/global/vmwareEngineNetworks/{vmware_engine_network_id}`. `{project}` can either be a project number or a project ID.
  *   `vpcNetwork` (*type:* `String.t`, *default:* `nil`) - Network to bind is a standard consumer VPC. Specify the name in the following form for consumer VPC network: `projects/{project}/global/networks/{network_id}`. `{project}` can either be a project number or a project ID.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :description => String.t() | nil,
          :name => String.t() | nil,
          :state => String.t() | nil,
          :uid => String.t() | nil,
          :updateTime => DateTime.t() | nil,
          :vmwareEngineNetwork => String.t() | nil,
          :vpcNetwork => String.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:description)
  field(:name)
  field(:state)
  field(:uid)
  field(:updateTime, as: DateTime)
  field(:vmwareEngineNetwork)
  field(:vpcNetwork)
end

defimpl Poison.Decoder, for: GoogleApi.VMwareEngine.V1.Model.ManagementDnsZoneBinding do
  def decode(value, options) do
    GoogleApi.VMwareEngine.V1.Model.ManagementDnsZoneBinding.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.VMwareEngine.V1.Model.ManagementDnsZoneBinding do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
