# Copyright 2019 Google LLC
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

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Calendar.V3.Model.EventExtendedProperties do
  @moduledoc """
  Extended properties of the event.

  ## Attributes

  - private (map()): Properties that are private to the copy of the event that appears on this calendar. Defaults to `nil`.
  - shared (map()): Properties that are shared between copies of the event on other attendees' calendars. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :private => map(),
          :shared => map()
        }

  field(:private, type: :map)
  field(:shared, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.Calendar.V3.Model.EventExtendedProperties do
  def decode(value, options) do
    GoogleApi.Calendar.V3.Model.EventExtendedProperties.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Calendar.V3.Model.EventExtendedProperties do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
