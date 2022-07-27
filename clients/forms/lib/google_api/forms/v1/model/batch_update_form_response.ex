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

defmodule GoogleApi.Forms.V1.Model.BatchUpdateFormResponse do
  @moduledoc """
  Response to a BatchUpdateFormRequest.

  ## Attributes

  *   `form` (*type:* `GoogleApi.Forms.V1.Model.Form.t`, *default:* `nil`) - Based on the bool request field `include_form_in_response`, a form with all applied mutations/updates is returned or not. This may be later than the revision ID created by these changes.
  *   `replies` (*type:* `list(GoogleApi.Forms.V1.Model.Response.t)`, *default:* `nil`) - The reply of the updates. This maps 1:1 with the update requests, although replies to some requests may be empty.
  *   `writeControl` (*type:* `GoogleApi.Forms.V1.Model.WriteControl.t`, *default:* `nil`) - The updated write control after applying the request.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :form => GoogleApi.Forms.V1.Model.Form.t() | nil,
          :replies => list(GoogleApi.Forms.V1.Model.Response.t()) | nil,
          :writeControl => GoogleApi.Forms.V1.Model.WriteControl.t() | nil
        }

  field(:form, as: GoogleApi.Forms.V1.Model.Form)
  field(:replies, as: GoogleApi.Forms.V1.Model.Response, type: :list)
  field(:writeControl, as: GoogleApi.Forms.V1.Model.WriteControl)
end

defimpl Poison.Decoder, for: GoogleApi.Forms.V1.Model.BatchUpdateFormResponse do
  def decode(value, options) do
    GoogleApi.Forms.V1.Model.BatchUpdateFormResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Forms.V1.Model.BatchUpdateFormResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end