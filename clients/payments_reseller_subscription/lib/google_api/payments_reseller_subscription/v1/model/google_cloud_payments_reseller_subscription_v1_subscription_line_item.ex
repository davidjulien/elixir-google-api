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

defmodule GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1SubscriptionLineItem do
  @moduledoc """
  Individual line item definition of a subscription. Next id: 5

  ## Attributes

  *   `lineItemFreeTrialEndTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. It is set only if the line item has its own free trial applied. End time of the line item free trial period, in ISO 8061 format. For example, "2019-08-31T17:28:54.564Z". It will be set the same as createTime if no free trial promotion is specified.
  *   `lineItemPromotionSpecs` (*type:* `list(GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1SubscriptionPromotionSpec.t)`, *default:* `nil`) - Optional. The promotions applied on the line item. It can be: - a free trial promotion, which overrides the subscription-level free trial promotion. - an introductory pricing promotion. When used as input in Create or Provision API, specify its resource name only.
  *   `product` (*type:* `String.t`, *default:* `nil`) - Required. Product resource name that identifies one the line item The format is 'partners/{partner_id}/products/{product_id}'.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The state of the line item.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :lineItemFreeTrialEndTime => DateTime.t() | nil,
          :lineItemPromotionSpecs =>
            list(
              GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1SubscriptionPromotionSpec.t()
            )
            | nil,
          :product => String.t() | nil,
          :state => String.t() | nil
        }

  field(:lineItemFreeTrialEndTime, as: DateTime)

  field(:lineItemPromotionSpecs,
    as:
      GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1SubscriptionPromotionSpec,
    type: :list
  )

  field(:product)
  field(:state)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1SubscriptionLineItem do
  def decode(value, options) do
    GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1SubscriptionLineItem.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1SubscriptionLineItem do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end