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

defmodule GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1AdjustDeveloperBalanceRequest do
  @moduledoc """
  Request for AdjustDeveloperBalance.

  ## Attributes

  *   `adjustment` (*type:* `GoogleApi.Apigee.V1.Model.GoogleTypeMoney.t`, *default:* `nil`) - * A positive value of `adjustment` means that that the API provider wishes to adjust the balance for an over-charged developer i.e. the balance of the developer will increase. * A negative value of `adjustment` means that that the API provider wishes to adjust the balance for an under-charged developer i.e. the balance of the developer will decrease.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :adjustment => GoogleApi.Apigee.V1.Model.GoogleTypeMoney.t() | nil
        }

  field(:adjustment, as: GoogleApi.Apigee.V1.Model.GoogleTypeMoney)
end

defimpl Poison.Decoder,
  for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1AdjustDeveloperBalanceRequest do
  def decode(value, options) do
    GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1AdjustDeveloperBalanceRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1AdjustDeveloperBalanceRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end