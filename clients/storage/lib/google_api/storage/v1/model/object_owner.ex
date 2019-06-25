# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Storage.V1.Model.ObjectOwner do
  @moduledoc """
  The owner of the object. This will always be the uploader of the object.

  ## Attributes

  *   `entity` (*type:* `String.t`, *default:* `nil`) - The entity, in the form user-userId.
  *   `entityId` (*type:* `String.t`, *default:* `nil`) - The ID for the entity.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :entity => String.t(),
          :entityId => String.t()
        }

  field(:entity)
  field(:entityId)
end

defimpl Poison.Decoder, for: GoogleApi.Storage.V1.Model.ObjectOwner do
  def decode(value, options) do
    GoogleApi.Storage.V1.Model.ObjectOwner.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Storage.V1.Model.ObjectOwner do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
