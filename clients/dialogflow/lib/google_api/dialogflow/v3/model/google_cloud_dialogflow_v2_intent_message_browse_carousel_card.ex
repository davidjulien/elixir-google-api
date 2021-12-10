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

defmodule GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard do
  @moduledoc """
  Browse Carousel Card for Actions on Google. https://developers.google.com/actions/assistant/responses#browsing_carousel

  ## Attributes

  *   `imageDisplayOptions` (*type:* `String.t`, *default:* `nil`) - Optional. Settings for displaying the image. Applies to every image in items.
  *   `items` (*type:* `list(GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem.t)`, *default:* `nil`) - Required. List of items in the Browse Carousel Card. Minimum of two items, maximum of ten.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :imageDisplayOptions => String.t() | nil,
          :items =>
            list(
              GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem.t()
            )
            | nil
        }

  field(:imageDisplayOptions)

  field(:items,
    as:
      GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard do
  def decode(value, options) do
    GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end