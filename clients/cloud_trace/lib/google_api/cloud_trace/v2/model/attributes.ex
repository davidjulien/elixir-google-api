# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.CloudTrace.V2.Model.Attributes do
  @moduledoc """
  A set of attributes, each in the format &#x60;[KEY]:[VALUE]&#x60;.

  ## Attributes

  - attributeMap (%{optional(String.t) &#x3D;&gt; AttributeValue}): The set of attributes. Each attribute&#39;s key can be up to 128 bytes long. The value can be a string up to 256 bytes, a signed 64-bit integer, or the Boolean values &#x60;true&#x60; and &#x60;false&#x60;. For example:      \&quot;/instance_id\&quot;: \&quot;my-instance\&quot;     \&quot;/http/user_agent\&quot;: \&quot;\&quot;     \&quot;/http/request_bytes\&quot;: 300     \&quot;abc.com/myattribute\&quot;: true Defaults to: `null`.
  - droppedAttributesCount (integer()): The number of attributes that were discarded. Attributes can be discarded because their keys are too long or because there are too many attributes. If this value is 0 then all attributes are valid. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :attributeMap => map(),
          :droppedAttributesCount => any()
        }

  field(:attributeMap, as: GoogleApi.CloudTrace.V2.Model.AttributeValue, type: :map)
  field(:droppedAttributesCount)
end

defimpl Poison.Decoder, for: GoogleApi.CloudTrace.V2.Model.Attributes do
  def decode(value, options) do
    GoogleApi.CloudTrace.V2.Model.Attributes.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudTrace.V2.Model.Attributes do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
