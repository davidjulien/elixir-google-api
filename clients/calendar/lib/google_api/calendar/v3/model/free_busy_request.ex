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

defmodule GoogleApi.Calendar.V3.Model.FreeBusyRequest do
  @moduledoc """


  ## Attributes

  - calendarExpansionMax (integer()): Maximal number of calendars for which FreeBusy information is to be provided. Optional. Maximum value is 50. Defaults to `nil`.
  - groupExpansionMax (integer()): Maximal number of calendar identifiers to be provided for a single group. Optional. An error is returned for a group with more members than this value. Maximum value is 100. Defaults to `nil`.
  - items (list(GoogleApi.Calendar.V3.Model.FreeBusyRequestItem.t)): List of calendars and/or groups to query. Defaults to `nil`.
  - timeMax (DateTime.t): The end of the interval for the query formatted as per RFC3339. Defaults to `nil`.
  - timeMin (DateTime.t): The start of the interval for the query formatted as per RFC3339. Defaults to `nil`.
  - timeZone (String.t): Time zone used in the response. Optional. The default is UTC. Defaults to `UTC`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :calendarExpansionMax => integer(),
          :groupExpansionMax => integer(),
          :items => list(GoogleApi.Calendar.V3.Model.FreeBusyRequestItem.t()),
          :timeMax => DateTime.t(),
          :timeMin => DateTime.t(),
          :timeZone => String.t()
        }

  field(:calendarExpansionMax)
  field(:groupExpansionMax)
  field(:items, as: GoogleApi.Calendar.V3.Model.FreeBusyRequestItem, type: :list)
  field(:timeMax, as: DateTime)
  field(:timeMin, as: DateTime)
  field(:timeZone)
end

defimpl Poison.Decoder, for: GoogleApi.Calendar.V3.Model.FreeBusyRequest do
  def decode(value, options) do
    GoogleApi.Calendar.V3.Model.FreeBusyRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Calendar.V3.Model.FreeBusyRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
