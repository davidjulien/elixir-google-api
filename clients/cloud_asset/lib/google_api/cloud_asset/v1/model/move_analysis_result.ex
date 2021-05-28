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

defmodule GoogleApi.CloudAsset.V1.Model.MoveAnalysisResult do
  @moduledoc """
  An analysis result including blockers and warnings.

  ## Attributes

  *   `blockers` (*type:* `list(GoogleApi.CloudAsset.V1.Model.MoveImpact.t)`, *default:* `nil`) - Blocking information that would prevent the target resource from moving to the specified destination at runtime.
  *   `warnings` (*type:* `list(GoogleApi.CloudAsset.V1.Model.MoveImpact.t)`, *default:* `nil`) - Warning information indicating that moving the target resource to the specified destination might be unsafe. This can include important policy information and configuration changes, but will not block moves at runtime.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :blockers => list(GoogleApi.CloudAsset.V1.Model.MoveImpact.t()) | nil,
          :warnings => list(GoogleApi.CloudAsset.V1.Model.MoveImpact.t()) | nil
        }

  field(:blockers, as: GoogleApi.CloudAsset.V1.Model.MoveImpact, type: :list)
  field(:warnings, as: GoogleApi.CloudAsset.V1.Model.MoveImpact, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.CloudAsset.V1.Model.MoveAnalysisResult do
  def decode(value, options) do
    GoogleApi.CloudAsset.V1.Model.MoveAnalysisResult.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudAsset.V1.Model.MoveAnalysisResult do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end