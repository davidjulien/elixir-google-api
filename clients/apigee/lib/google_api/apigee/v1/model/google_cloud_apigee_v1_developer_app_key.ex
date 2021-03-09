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

defmodule GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1DeveloperAppKey do
  @moduledoc """


  ## Attributes

  *   `apiProducts` (*type:* `list(any())`, *default:* `nil`) - List of API products for which the credential can be used. **Note**: Do not specify the list of API products when creating a consumer key and secret for a developer app. Instead, use the UpdateDeveloperAppKey API to make the association after the consumer key and secret are created.
  *   `attributes` (*type:* `list(GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1Attribute.t)`, *default:* `nil`) - List of attributes associated with the credential.
  *   `consumerKey` (*type:* `String.t`, *default:* `nil`) - Consumer key.
  *   `consumerSecret` (*type:* `String.t`, *default:* `nil`) - Secret key.
  *   `expiresAt` (*type:* `String.t`, *default:* `nil`) - Time the developer app expires in milliseconds since epoch.
  *   `expiresInSeconds` (*type:* `String.t`, *default:* `nil`) - Input only. Expiration time, in seconds, for the consumer key. If not set or left to the default value of `-1`, the API key never expires. The expiration time can't be updated after it is set.
  *   `issuedAt` (*type:* `String.t`, *default:* `nil`) - Time the developer app was created in milliseconds since epoch.
  *   `scopes` (*type:* `list(String.t)`, *default:* `nil`) - Scopes to apply to the app. The specified scope names must already be defined for the API product that you associate with the app.
  *   `status` (*type:* `String.t`, *default:* `nil`) - Status of the credential. Valid values include `approved` or `revoked`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :apiProducts => list(any()) | nil,
          :attributes => list(GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1Attribute.t()) | nil,
          :consumerKey => String.t() | nil,
          :consumerSecret => String.t() | nil,
          :expiresAt => String.t() | nil,
          :expiresInSeconds => String.t() | nil,
          :issuedAt => String.t() | nil,
          :scopes => list(String.t()) | nil,
          :status => String.t() | nil
        }

  field(:apiProducts, type: :list)
  field(:attributes, as: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1Attribute, type: :list)
  field(:consumerKey)
  field(:consumerSecret)
  field(:expiresAt)
  field(:expiresInSeconds)
  field(:issuedAt)
  field(:scopes, type: :list)
  field(:status)
end

defimpl Poison.Decoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1DeveloperAppKey do
  def decode(value, options) do
    GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1DeveloperAppKey.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1DeveloperAppKey do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
