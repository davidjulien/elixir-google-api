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

defmodule GoogleApi.ContainerAnalysis.V1alpha1.Model.UpdateOperationRequest do
  @moduledoc """
  Request for updating an existing operation

  ## Attributes

  *   `operation` (*type:* `GoogleApi.ContainerAnalysis.V1alpha1.Model.Operation.t`, *default:* `nil`) - The operation to create.
  *   `updateMask` (*type:* `String.t`, *default:* `nil`) - The fields to update.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :operation => GoogleApi.ContainerAnalysis.V1alpha1.Model.Operation.t(),
          :updateMask => String.t()
        }

  field(:operation, as: GoogleApi.ContainerAnalysis.V1alpha1.Model.Operation)
  field(:updateMask)
end

defimpl Poison.Decoder, for: GoogleApi.ContainerAnalysis.V1alpha1.Model.UpdateOperationRequest do
  def decode(value, options) do
    GoogleApi.ContainerAnalysis.V1alpha1.Model.UpdateOperationRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContainerAnalysis.V1alpha1.Model.UpdateOperationRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
