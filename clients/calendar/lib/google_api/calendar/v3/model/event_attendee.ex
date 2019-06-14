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

defmodule GoogleApi.Calendar.V3.Model.EventAttendee do
  @moduledoc """


  ## Attributes

  - additionalGuests (integer()): Number of additional guests. Optional. The default is 0. Defaults to `0`.
  - comment (String.t): The attendee's response comment. Optional. Defaults to `nil`.
  - displayName (String.t): The attendee's name, if available. Optional. Defaults to `nil`.
  - email (String.t): The attendee's email address, if available. This field must be present when adding an attendee. It must be a valid email address as per RFC5322.
  Required when adding an attendee. Defaults to `nil`.
  - id (String.t): The attendee's Profile ID, if available. It corresponds to the id field in the People collection of the Google+ API Defaults to `nil`.
  - optional (boolean()): Whether this is an optional attendee. Optional. The default is False. Defaults to `false`.
  - organizer (boolean()): Whether the attendee is the organizer of the event. Read-only. The default is False. Defaults to `nil`.
  - resource (boolean()): Whether the attendee is a resource. Can only be set when the attendee is added to the event for the first time. Subsequent modifications are ignored. Optional. The default is False. Defaults to `false`.
  - responseStatus (String.t): The attendee's response status. Possible values are:  
  - "needsAction" - The attendee has not responded to the invitation. 
  - "declined" - The attendee has declined the invitation. 
  - "tentative" - The attendee has tentatively accepted the invitation. 
  - "accepted" - The attendee has accepted the invitation. Defaults to `nil`.
  - self (boolean()): Whether this entry represents the calendar on which this copy of the event appears. Read-only. The default is False. Defaults to `false`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :additionalGuests => integer(),
          :comment => String.t(),
          :displayName => String.t(),
          :email => String.t(),
          :id => String.t(),
          :optional => boolean(),
          :organizer => boolean(),
          :resource => boolean(),
          :responseStatus => String.t(),
          :self => boolean()
        }

  field(:additionalGuests)
  field(:comment)
  field(:displayName)
  field(:email)
  field(:id)
  field(:optional)
  field(:organizer)
  field(:resource)
  field(:responseStatus)
  field(:self)
end

defimpl Poison.Decoder, for: GoogleApi.Calendar.V3.Model.EventAttendee do
  def decode(value, options) do
    GoogleApi.Calendar.V3.Model.EventAttendee.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Calendar.V3.Model.EventAttendee do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
