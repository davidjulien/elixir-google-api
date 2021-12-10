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

defmodule GoogleApi.APIGateway.V1.Model.ApigatewayApiConfigFile do
  @moduledoc """
  A lightweight description of a file.

  ## Attributes

  *   `contents` (*type:* `String.t`, *default:* `nil`) - The bytes that constitute the file.
  *   `path` (*type:* `String.t`, *default:* `nil`) - The file path (full or relative path). This is typically the path of the file when it is uploaded.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :contents => String.t() | nil,
          :path => String.t() | nil
        }

  field(:contents)
  field(:path)
end

defimpl Poison.Decoder, for: GoogleApi.APIGateway.V1.Model.ApigatewayApiConfigFile do
  def decode(value, options) do
    GoogleApi.APIGateway.V1.Model.ApigatewayApiConfigFile.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.APIGateway.V1.Model.ApigatewayApiConfigFile do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end