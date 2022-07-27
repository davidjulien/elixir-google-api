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

defmodule GoogleApi.BareMetalSolution.V2.Model.SnapshotReservationDetail do
  @moduledoc """
  Details about snapshot space reservation and usage on the storage volume.

  ## Attributes

  *   `reservedSpaceGib` (*type:* `String.t`, *default:* `nil`) - The space on this storage volume reserved for snapshots, shown in GiB.
  *   `reservedSpacePercent` (*type:* `integer()`, *default:* `nil`) - Percent of the total Volume size reserved for snapshot copies. Enabling snapshots requires reserving 20% or more of the storage volume space for snapshots. Maximum reserved space for snapshots is 40%. Setting this field will effectively set snapshot_enabled to true.
  *   `reservedSpaceRemainingGib` (*type:* `String.t`, *default:* `nil`) - The amount, in GiB, of available space in this storage volume's reserved snapshot space.
  *   `reservedSpaceUsedPercent` (*type:* `integer()`, *default:* `nil`) - The percent of snapshot space on this storage volume actually being used by the snapshot copies. This value might be higher than 100% if the snapshot copies have overflowed into the data portion of the storage volume.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :reservedSpaceGib => String.t() | nil,
          :reservedSpacePercent => integer() | nil,
          :reservedSpaceRemainingGib => String.t() | nil,
          :reservedSpaceUsedPercent => integer() | nil
        }

  field(:reservedSpaceGib)
  field(:reservedSpacePercent)
  field(:reservedSpaceRemainingGib)
  field(:reservedSpaceUsedPercent)
end

defimpl Poison.Decoder, for: GoogleApi.BareMetalSolution.V2.Model.SnapshotReservationDetail do
  def decode(value, options) do
    GoogleApi.BareMetalSolution.V2.Model.SnapshotReservationDetail.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BareMetalSolution.V2.Model.SnapshotReservationDetail do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end