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

defmodule GoogleApi.AlertCenter.V1beta1.Model.Notification do
  @moduledoc """
  Settings for callback notifications. For more details see [Google Workspace Alert Notification](/admin-sdk/alertcenter/guides/notifications).

  ## Attributes

  *   `cloudPubsubTopic` (*type:* `GoogleApi.AlertCenter.V1beta1.Model.CloudPubsubTopic.t`, *default:* `nil`) - A Google Cloud Pub/sub topic destination.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cloudPubsubTopic => GoogleApi.AlertCenter.V1beta1.Model.CloudPubsubTopic.t() | nil
        }

  field(:cloudPubsubTopic, as: GoogleApi.AlertCenter.V1beta1.Model.CloudPubsubTopic)
end

defimpl Poison.Decoder, for: GoogleApi.AlertCenter.V1beta1.Model.Notification do
  def decode(value, options) do
    GoogleApi.AlertCenter.V1beta1.Model.Notification.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AlertCenter.V1beta1.Model.Notification do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end