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

defmodule GoogleApi.CloudSearch.V1.Model.AppsDynamiteUserMentionMetadata do
  @moduledoc """
  Annotation metadata for user mentions (+/@/-).

  ## Attributes

  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Display name of the mentioned user. This field should remain empty when clients resolve a UserMention annotation. It will be filled in when a UserMention is generated by the Integration Server.
  *   `gender` (*type:* `String.t`, *default:* `nil`) - Gender of the mentioned user. One of "female", "male" or "other". Used for choosing accurate translations for strings that contain the UserMention, when these need to be constructed (e.g. task assignment update message). This field should remain empty when clients resolve a UserMention. It will be filled in when a UserMention is generated by the Integration Server.
  *   `id` (*type:* `GoogleApi.CloudSearch.V1.Model.AppsDynamiteUserId.t`, *default:* `nil`) - To be deprecated. Use invitee_info field instead. ID of the User mentioned. This field should remain empty when type == MENTION_ALL.
  *   `inviteeInfo` (*type:* `GoogleApi.CloudSearch.V1.Model.AppsDynamiteInviteeInfo.t`, *default:* `nil`) - Invitee UserId and email used when mentioned. This field should remain empty when type == MENTION_ALL. Invitee_info.email is only used when a user is @-mentioned with an email address, and it will be empty when clients get messages from Backend.
  *   `type` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :displayName => String.t() | nil,
          :gender => String.t() | nil,
          :id => GoogleApi.CloudSearch.V1.Model.AppsDynamiteUserId.t() | nil,
          :inviteeInfo => GoogleApi.CloudSearch.V1.Model.AppsDynamiteInviteeInfo.t() | nil,
          :type => String.t() | nil
        }

  field(:displayName)
  field(:gender)
  field(:id, as: GoogleApi.CloudSearch.V1.Model.AppsDynamiteUserId)
  field(:inviteeInfo, as: GoogleApi.CloudSearch.V1.Model.AppsDynamiteInviteeInfo)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.AppsDynamiteUserMentionMetadata do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.AppsDynamiteUserMentionMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.AppsDynamiteUserMentionMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end