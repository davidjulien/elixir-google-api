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

defmodule GoogleApi.VMwareEngine.V1.Model.ResetNsxCredentialsRequest do
  @moduledoc """
  Request message for VmwareEngine.ResetNsxCredentials

  ## Attributes

  *   `requestId` (*type:* `String.t`, *default:* `nil`) - Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server guarantees that a request doesn't result in creation of duplicate commitments for at least 60 minutes. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :requestId => String.t() | nil
        }

  field(:requestId)
end

defimpl Poison.Decoder, for: GoogleApi.VMwareEngine.V1.Model.ResetNsxCredentialsRequest do
  def decode(value, options) do
    GoogleApi.VMwareEngine.V1.Model.ResetNsxCredentialsRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.VMwareEngine.V1.Model.ResetNsxCredentialsRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
