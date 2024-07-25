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

defmodule GoogleApi.GKEBackup.V1.Model.VolumeDataRestorePolicyBinding do
  @moduledoc """
  Binds resources in the scope to the given VolumeDataRestorePolicy.

  ## Attributes

  *   `policy` (*type:* `String.t`, *default:* `nil`) - Required. The VolumeDataRestorePolicy to apply when restoring volumes in scope.
  *   `volumeType` (*type:* `String.t`, *default:* `nil`) - The volume type, as determined by the PVC's bound PV, to apply the policy to.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :policy => String.t() | nil,
          :volumeType => String.t() | nil
        }

  field(:policy)
  field(:volumeType)
end

defimpl Poison.Decoder, for: GoogleApi.GKEBackup.V1.Model.VolumeDataRestorePolicyBinding do
  def decode(value, options) do
    GoogleApi.GKEBackup.V1.Model.VolumeDataRestorePolicyBinding.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.GKEBackup.V1.Model.VolumeDataRestorePolicyBinding do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
