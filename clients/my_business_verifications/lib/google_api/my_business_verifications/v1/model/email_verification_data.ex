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

defmodule GoogleApi.MyBusinessVerifications.V1.Model.EmailVerificationData do
  @moduledoc """
  Display data for verifications through email.

  ## Attributes

  *   `domain` (*type:* `String.t`, *default:* `nil`) - Domain name in the email address. e.g. "gmail.com" in foo@gmail.com
  *   `isUserNameEditable` (*type:* `boolean()`, *default:* `nil`) - Whether client is allowed to provide a different user name.
  *   `user` (*type:* `String.t`, *default:* `nil`) - User name in the email address. e.g. "foo" in foo@gmail.com
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :domain => String.t() | nil,
          :isUserNameEditable => boolean() | nil,
          :user => String.t() | nil
        }

  field(:domain)
  field(:isUserNameEditable)
  field(:user)
end

defimpl Poison.Decoder, for: GoogleApi.MyBusinessVerifications.V1.Model.EmailVerificationData do
  def decode(value, options) do
    GoogleApi.MyBusinessVerifications.V1.Model.EmailVerificationData.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MyBusinessVerifications.V1.Model.EmailVerificationData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end