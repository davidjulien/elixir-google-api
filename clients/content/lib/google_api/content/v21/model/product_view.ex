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

defmodule GoogleApi.Content.V21.Model.ProductView do
  @moduledoc """
  Product fields. Values are only set for fields requested explicitly in the request's search query.

  ## Attributes

  *   `aggregatedDestinationStatus` (*type:* `String.t`, *default:* `nil`) - Aggregated destination status.
  *   `availability` (*type:* `String.t`, *default:* `nil`) - Availability of the product.
  *   `brand` (*type:* `String.t`, *default:* `nil`) - Brand of the product.
  *   `channel` (*type:* `String.t`, *default:* `nil`) - Channel of the product (online versus local).
  *   `condition` (*type:* `String.t`, *default:* `nil`) - Condition of the product.
  *   `creationTime` (*type:* `DateTime.t`, *default:* `nil`) - The time the merchant created the product in timestamp seconds.
  *   `currencyCode` (*type:* `String.t`, *default:* `nil`) - Product price currency code (for example, ISO 4217). Absent if product price is not available.
  *   `expirationDate` (*type:* `GoogleApi.Content.V21.Model.Date.t`, *default:* `nil`) - Expiration date for the product. Specified on insertion.
  *   `gtin` (*type:* `list(String.t)`, *default:* `nil`) - GTIN of the product.
  *   `id` (*type:* `String.t`, *default:* `nil`) - The REST ID of the product, in the form of channel:contentLanguage:targetCountry:offerId. Content API methods that operate on products take this as their productId parameter. Should always be included in the SELECT clause.
  *   `itemGroupId` (*type:* `String.t`, *default:* `nil`) - Item group ID provided by the merchant for grouping variants together.
  *   `itemIssues` (*type:* `list(GoogleApi.Content.V21.Model.ProductViewItemIssue.t)`, *default:* `nil`) - List of item issues for the product.
  *   `languageCode` (*type:* `String.t`, *default:* `nil`) - Language code of the product in BCP 47 format.
  *   `offerId` (*type:* `String.t`, *default:* `nil`) - Merchant-provided id of the product.
  *   `priceMicros` (*type:* `String.t`, *default:* `nil`) - Product price specified as micros in the product currency. Absent in case the information about the price of the product is not available.
  *   `shippingLabel` (*type:* `String.t`, *default:* `nil`) - The normalized shipping label specified in the feed
  *   `title` (*type:* `String.t`, *default:* `nil`) - Title of the product.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :aggregatedDestinationStatus => String.t() | nil,
          :availability => String.t() | nil,
          :brand => String.t() | nil,
          :channel => String.t() | nil,
          :condition => String.t() | nil,
          :creationTime => DateTime.t() | nil,
          :currencyCode => String.t() | nil,
          :expirationDate => GoogleApi.Content.V21.Model.Date.t() | nil,
          :gtin => list(String.t()) | nil,
          :id => String.t() | nil,
          :itemGroupId => String.t() | nil,
          :itemIssues => list(GoogleApi.Content.V21.Model.ProductViewItemIssue.t()) | nil,
          :languageCode => String.t() | nil,
          :offerId => String.t() | nil,
          :priceMicros => String.t() | nil,
          :shippingLabel => String.t() | nil,
          :title => String.t() | nil
        }

  field(:aggregatedDestinationStatus)
  field(:availability)
  field(:brand)
  field(:channel)
  field(:condition)
  field(:creationTime, as: DateTime)
  field(:currencyCode)
  field(:expirationDate, as: GoogleApi.Content.V21.Model.Date)
  field(:gtin, type: :list)
  field(:id)
  field(:itemGroupId)
  field(:itemIssues, as: GoogleApi.Content.V21.Model.ProductViewItemIssue, type: :list)
  field(:languageCode)
  field(:offerId)
  field(:priceMicros)
  field(:shippingLabel)
  field(:title)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.ProductView do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.ProductView.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.ProductView do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end