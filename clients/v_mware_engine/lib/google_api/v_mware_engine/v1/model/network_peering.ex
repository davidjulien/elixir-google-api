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

defmodule GoogleApi.VMwareEngine.V1.Model.NetworkPeering do
  @moduledoc """
  Details of a network peering.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Creation time of this resource.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. User-provided description for this network peering.
  *   `exchangeSubnetRoutes` (*type:* `boolean()`, *default:* `nil`) - Optional. True if full mesh connectivity is created and managed automatically between peered networks; false otherwise. Currently this field is always true because Google Compute Engine automatically creates and manages subnetwork routes between two VPC networks when peering state is 'ACTIVE'.
  *   `exportCustomRoutes` (*type:* `boolean()`, *default:* `nil`) - Optional. True if custom routes are exported to the peered network; false otherwise. The default value is true.
  *   `exportCustomRoutesWithPublicIp` (*type:* `boolean()`, *default:* `nil`) - Optional. True if all subnet routes with a public IP address range are exported; false otherwise. The default value is true. IPv4 special-use ranges (https://en.wikipedia.org/wiki/IPv4#Special_addresses) are always exported to peers and are not controlled by this field.
  *   `importCustomRoutes` (*type:* `boolean()`, *default:* `nil`) - Optional. True if custom routes are imported from the peered network; false otherwise. The default value is true.
  *   `importCustomRoutesWithPublicIp` (*type:* `boolean()`, *default:* `nil`) - Optional. True if all subnet routes with public IP address range are imported; false otherwise. The default value is true. IPv4 special-use ranges (https://en.wikipedia.org/wiki/IPv4#Special_addresses) are always imported to peers and are not controlled by this field.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name of the network peering. NetworkPeering is a global resource and location can only be global. Resource names are scheme-less URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names. For example: `projects/my-project/locations/global/networkPeerings/my-peering`
  *   `peerMtu` (*type:* `integer()`, *default:* `nil`) - Optional. Maximum transmission unit (MTU) in bytes. The default value is `1500`. If a value of `0` is provided for this field, VMware Engine uses the default value instead.
  *   `peerNetwork` (*type:* `String.t`, *default:* `nil`) - Required. The relative resource name of the network to peer with a standard VMware Engine network. The provided network can be a consumer VPC network or another standard VMware Engine network. If the `peer_network_type` is VMWARE_ENGINE_NETWORK, specify the name in the form: `projects/{project}/locations/global/vmwareEngineNetworks/{vmware_engine_network_id}`. Otherwise specify the name in the form: `projects/{project}/global/networks/{network_id}`, where `{project}` can either be a project number or a project ID.
  *   `peerNetworkType` (*type:* `String.t`, *default:* `nil`) - Required. The type of the network to peer with the VMware Engine network.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. State of the network peering. This field has a value of 'ACTIVE' when there's a matching configuration in the peer network. New values may be added to this enum when appropriate.
  *   `stateDetails` (*type:* `String.t`, *default:* `nil`) - Output only. Output Only. Details about the current state of the network peering.
  *   `uid` (*type:* `String.t`, *default:* `nil`) - Output only. System-generated unique identifier for the resource.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Last update time of this resource.
  *   `vmwareEngineNetwork` (*type:* `String.t`, *default:* `nil`) - Required. The relative resource name of the VMware Engine network. Specify the name in the following form: `projects/{project}/locations/{location}/vmwareEngineNetworks/{vmware_engine_network_id}` where `{project}` can either be a project number or a project ID.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :description => String.t() | nil,
          :exchangeSubnetRoutes => boolean() | nil,
          :exportCustomRoutes => boolean() | nil,
          :exportCustomRoutesWithPublicIp => boolean() | nil,
          :importCustomRoutes => boolean() | nil,
          :importCustomRoutesWithPublicIp => boolean() | nil,
          :name => String.t() | nil,
          :peerMtu => integer() | nil,
          :peerNetwork => String.t() | nil,
          :peerNetworkType => String.t() | nil,
          :state => String.t() | nil,
          :stateDetails => String.t() | nil,
          :uid => String.t() | nil,
          :updateTime => DateTime.t() | nil,
          :vmwareEngineNetwork => String.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:description)
  field(:exchangeSubnetRoutes)
  field(:exportCustomRoutes)
  field(:exportCustomRoutesWithPublicIp)
  field(:importCustomRoutes)
  field(:importCustomRoutesWithPublicIp)
  field(:name)
  field(:peerMtu)
  field(:peerNetwork)
  field(:peerNetworkType)
  field(:state)
  field(:stateDetails)
  field(:uid)
  field(:updateTime, as: DateTime)
  field(:vmwareEngineNetwork)
end

defimpl Poison.Decoder, for: GoogleApi.VMwareEngine.V1.Model.NetworkPeering do
  def decode(value, options) do
    GoogleApi.VMwareEngine.V1.Model.NetworkPeering.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.VMwareEngine.V1.Model.NetworkPeering do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
