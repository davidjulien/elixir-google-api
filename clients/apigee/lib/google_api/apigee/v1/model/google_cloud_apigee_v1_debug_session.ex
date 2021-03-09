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

defmodule GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1DebugSession do
  @moduledoc """


  ## Attributes

  *   `count` (*type:* `integer()`, *default:* `nil`) - Optional. The number of request to be traced. Min = 1, Max = 15, Default = 10.
  *   `filter` (*type:* `String.t`, *default:* `nil`) - Optional. A conditional statement which is evaluated against the request message to determine if it should be traced. Syntax matches that of on API Proxy bundle flow Condition.
  *   `name` (*type:* `String.t`, *default:* `nil`) - A unique ID for this DebugSession.
  *   `timeout` (*type:* `String.t`, *default:* `nil`) - Optional. The time in seconds after which this DebugSession should end. This value will override the value in query param, if both are provided.
  *   `tracesize` (*type:* `integer()`, *default:* `nil`) - Optional. The maximum number of bytes captured from the response payload. Min = 0, Max = 5120, Default = 5120.
  *   `validity` (*type:* `integer()`, *default:* `nil`) - Optional. The length of time, in seconds, that this debug session is valid, starting from when it's received in the control plane. Min = 1, Max = 15, Default = 10.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :count => integer() | nil,
          :filter => String.t() | nil,
          :name => String.t() | nil,
          :timeout => String.t() | nil,
          :tracesize => integer() | nil,
          :validity => integer() | nil
        }

  field(:count)
  field(:filter)
  field(:name)
  field(:timeout)
  field(:tracesize)
  field(:validity)
end

defimpl Poison.Decoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1DebugSession do
  def decode(value, options) do
    GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1DebugSession.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1DebugSession do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
