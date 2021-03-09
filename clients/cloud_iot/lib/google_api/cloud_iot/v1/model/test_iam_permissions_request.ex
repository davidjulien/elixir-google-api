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

defmodule GoogleApi.CloudIot.V1.Model.TestIamPermissionsRequest do
  @moduledoc """
  Request message for `TestIamPermissions` method.

  ## Attributes

  *   `permissions` (*type:* `list(String.t)`, *default:* `nil`) - The set of permissions to check for the `resource`. Permissions with wildcards (such as '*' or 'storage.*') are not allowed. For more information see [IAM Overview](https://cloud.google.com/iam/docs/overview#permissions).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :permissions => list(String.t()) | nil
        }

  field(:permissions, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.CloudIot.V1.Model.TestIamPermissionsRequest do
  def decode(value, options) do
    GoogleApi.CloudIot.V1.Model.TestIamPermissionsRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudIot.V1.Model.TestIamPermissionsRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
