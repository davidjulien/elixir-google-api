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

defmodule GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaGoogleAdsLink do
  @moduledoc """
  A link between a Google Analytics property and a Google Ads account.

  ## Attributes

  *   `adsPersonalizationEnabled` (*type:* `boolean()`, *default:* `nil`) - Enable personalized advertising features with this integration. Automatically publish my Google Analytics audience lists and Google Analytics remarketing events/parameters to the linked Google Ads account. If this field is not set on create/update, it will be defaulted to true.
  *   `canManageClients` (*type:* `boolean()`, *default:* `nil`) - Output only. If true, this link is for a Google Ads manager account.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Time when this link was originally created.
  *   `creatorEmailAddress` (*type:* `String.t`, *default:* `nil`) - Output only. Email address of the user that created the link. An empty string will be returned if the email address can't be retrieved.
  *   `customerId` (*type:* `String.t`, *default:* `nil`) - Immutable. Google Ads customer ID.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. Format: properties/{propertyId}/googleAdsLinks/{googleAdsLinkId} Note: googleAdsLinkId is not the Google Ads customer ID.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Time when this link was last updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :adsPersonalizationEnabled => boolean() | nil,
          :canManageClients => boolean() | nil,
          :createTime => DateTime.t() | nil,
          :creatorEmailAddress => String.t() | nil,
          :customerId => String.t() | nil,
          :name => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:adsPersonalizationEnabled)
  field(:canManageClients)
  field(:createTime, as: DateTime)
  field(:creatorEmailAddress)
  field(:customerId)
  field(:name)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder,
  for: GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaGoogleAdsLink do
  def decode(value, options) do
    GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaGoogleAdsLink.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaGoogleAdsLink do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
