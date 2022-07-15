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

defmodule GoogleApi.NetworkServices.V1.Model.Mesh do
  @moduledoc """
  Mesh represents a logical configuration grouping for workload to workload communication within a service mesh. Routes that point to mesh dictate how requests are routed within this logical mesh boundary.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The timestamp when the resource was created.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. A free-text description of the resource. Max length 1024 characters.
  *   `interceptionPort` (*type:* `integer()`, *default:* `nil`) - Optional. If set to a valid TCP port (1-65535), instructs the SIDECAR proxy to listen on the specified port of localhost (127.0.0.1) address. The SIDECAR proxy will expect all traffic to be redirected to this port regardless of its actual ip:port destination. If unset, a port '15001' is used as the interception port. This will is applicable only for sidecar proxy deployments.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Optional. Set of label tags associated with the Mesh resource.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. Name of the Mesh resource. It matches pattern `projects/*/locations/global/meshes/`.
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - Output only. Server-defined URL of this resource
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The timestamp when the resource was updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :description => String.t() | nil,
          :interceptionPort => integer() | nil,
          :labels => map() | nil,
          :name => String.t() | nil,
          :selfLink => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:description)
  field(:interceptionPort)
  field(:labels, type: :map)
  field(:name)
  field(:selfLink)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.NetworkServices.V1.Model.Mesh do
  def decode(value, options) do
    GoogleApi.NetworkServices.V1.Model.Mesh.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.NetworkServices.V1.Model.Mesh do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end