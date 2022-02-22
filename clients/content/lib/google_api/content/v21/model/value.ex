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

defmodule GoogleApi.Content.V21.Model.Value do
  @moduledoc """
  The single value of a rate group or the value of a rate group table's cell. Exactly one of `noShipping`, `flatRate`, `pricePercentage`, `carrierRateName`, `subtableName` must be set.

  ## Attributes

  *   `carrierRateName` (*type:* `String.t`, *default:* `nil`) - The name of a carrier rate referring to a carrier rate defined in the same rate group. Can only be set if all other fields are not set.
  *   `flatRate` (*type:* `GoogleApi.Content.V21.Model.Price.t`, *default:* `nil`) - A flat rate. Can only be set if all other fields are not set.
  *   `noShipping` (*type:* `boolean()`, *default:* `nil`) - If true, then the product can't ship. Must be true when set, can only be set if all other fields are not set.
  *   `pricePercentage` (*type:* `String.t`, *default:* `nil`) - A percentage of the price represented as a number in decimal notation (for example, `"5.4"`). Can only be set if all other fields are not set.
  *   `subtableName` (*type:* `String.t`, *default:* `nil`) - The name of a subtable. Can only be set in table cells (not for single values), and only if all other fields are not set.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :carrierRateName => String.t() | nil,
          :flatRate => GoogleApi.Content.V21.Model.Price.t() | nil,
          :noShipping => boolean() | nil,
          :pricePercentage => String.t() | nil,
          :subtableName => String.t() | nil
        }

  field(:carrierRateName)
  field(:flatRate, as: GoogleApi.Content.V21.Model.Price)
  field(:noShipping)
  field(:pricePercentage)
  field(:subtableName)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.Value do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.Value.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.Value do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
