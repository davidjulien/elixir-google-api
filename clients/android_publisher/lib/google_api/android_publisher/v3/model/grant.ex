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

defmodule GoogleApi.AndroidPublisher.V3.Model.Grant do
  @moduledoc """
  An access grant resource.

  ## Attributes

  *   `appLevelPermissions` (*type:* `list(String.t)`, *default:* `nil`) - The permissions granted to the user for this app.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. Resource name for this grant, following the pattern "developers/{developer}/users/{email}/grants/{package_name}".
  *   `packageName` (*type:* `String.t`, *default:* `nil`) - Immutable. The package name of the app.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :appLevelPermissions => list(String.t()) | nil,
          :name => String.t() | nil,
          :packageName => String.t() | nil
        }

  field(:appLevelPermissions, type: :list)
  field(:name)
  field(:packageName)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidPublisher.V3.Model.Grant do
  def decode(value, options) do
    GoogleApi.AndroidPublisher.V3.Model.Grant.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidPublisher.V3.Model.Grant do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end