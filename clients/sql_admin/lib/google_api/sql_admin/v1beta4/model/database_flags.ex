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

defmodule GoogleApi.SQLAdmin.V1beta4.Model.DatabaseFlags do
  @moduledoc """
  Database flags for Cloud SQL instances.

  ## Attributes

  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the flag. These flags are passed at instance startup, so include both server options and system variables. Flags are specified with underscores, not hyphens. For more information, see Configuring Database Flags in the Cloud SQL documentation.
  *   `value` (*type:* `String.t`, *default:* `nil`) - The value of the flag. Booleans are set to *on* for true and *off* for false. This field must be omitted if the flag doesn't take a value.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :name => String.t() | nil,
          :value => String.t() | nil
        }

  field(:name)
  field(:value)
end

defimpl Poison.Decoder, for: GoogleApi.SQLAdmin.V1beta4.Model.DatabaseFlags do
  def decode(value, options) do
    GoogleApi.SQLAdmin.V1beta4.Model.DatabaseFlags.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SQLAdmin.V1beta4.Model.DatabaseFlags do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
