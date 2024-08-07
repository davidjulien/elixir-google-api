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

defmodule GoogleApi.BackupDR.V1.Model.IsolationExpectations do
  @moduledoc """


  ## Attributes

  *   `requirementOverride` (*type:* `GoogleApi.BackupDR.V1.Model.RequirementOverride.t`, *default:* `nil`) - Explicit overrides for ZI and ZS requirements to be used for resources that should be excluded from ZI/ZS verification logic.
  *   `ziOrgPolicy` (*type:* `String.t`, *default:* `nil`) - 
  *   `ziRegionPolicy` (*type:* `String.t`, *default:* `nil`) - 
  *   `ziRegionState` (*type:* `String.t`, *default:* `nil`) - 
  *   `zoneIsolation` (*type:* `String.t`, *default:* `nil`) - Deprecated: use zi_org_policy, zi_region_policy and zi_region_state instead for setting ZI expectations as per go/zicy-publish-physical-location.
  *   `zoneSeparation` (*type:* `String.t`, *default:* `nil`) - Deprecated: use zs_org_policy, and zs_region_stateinstead for setting Zs expectations as per go/zicy-publish-physical-location.
  *   `zsOrgPolicy` (*type:* `String.t`, *default:* `nil`) - 
  *   `zsRegionState` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :requirementOverride => GoogleApi.BackupDR.V1.Model.RequirementOverride.t() | nil,
          :ziOrgPolicy => String.t() | nil,
          :ziRegionPolicy => String.t() | nil,
          :ziRegionState => String.t() | nil,
          :zoneIsolation => String.t() | nil,
          :zoneSeparation => String.t() | nil,
          :zsOrgPolicy => String.t() | nil,
          :zsRegionState => String.t() | nil
        }

  field(:requirementOverride, as: GoogleApi.BackupDR.V1.Model.RequirementOverride)
  field(:ziOrgPolicy)
  field(:ziRegionPolicy)
  field(:ziRegionState)
  field(:zoneIsolation)
  field(:zoneSeparation)
  field(:zsOrgPolicy)
  field(:zsRegionState)
end

defimpl Poison.Decoder, for: GoogleApi.BackupDR.V1.Model.IsolationExpectations do
  def decode(value, options) do
    GoogleApi.BackupDR.V1.Model.IsolationExpectations.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BackupDR.V1.Model.IsolationExpectations do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
