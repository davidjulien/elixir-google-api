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

defmodule GoogleApi.CloudSearch.V1.Model.AppsDynamiteBackendLabelsCommunalLabelTag do
  @moduledoc """
  An individual instance (or "tag") of a label configured as a communal type that's associated with a message.

  ## Attributes

  *   `creatorUserId` (*type:* `String.t`, *default:* `nil`) - Gaia ID of the user who added the tag, if any. Not present for any tags automatically created by server-side processing.
  *   `labelId` (*type:* `String.t`, *default:* `nil`) - A string ID representing the label. Possible ID values are documented at go/chat-labels-howto:ids. Example: "^*t_p" for "Pinned".
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :creatorUserId => String.t() | nil,
          :labelId => String.t() | nil
        }

  field(:creatorUserId)
  field(:labelId)
end

defimpl Poison.Decoder,
  for: GoogleApi.CloudSearch.V1.Model.AppsDynamiteBackendLabelsCommunalLabelTag do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.AppsDynamiteBackendLabelsCommunalLabelTag.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.CloudSearch.V1.Model.AppsDynamiteBackendLabelsCommunalLabelTag do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end