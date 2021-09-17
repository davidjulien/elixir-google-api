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

defmodule GoogleApi.Compute.V1.Model.RouterBgpPeerBfd do
  @moduledoc """


  ## Attributes

  *   `minReceiveInterval` (*type:* `integer()`, *default:* `nil`) - The minimum interval, in milliseconds, between BFD control packets received from the peer router. The actual value is negotiated between the two routers and is equal to the greater of this value and the transmit interval of the other router. If set, this value must be between 1000 and 30000. The default is 1000.
  *   `minTransmitInterval` (*type:* `integer()`, *default:* `nil`) - The minimum interval, in milliseconds, between BFD control packets transmitted to the peer router. The actual value is negotiated between the two routers and is equal to the greater of this value and the corresponding receive interval of the other router. If set, this value must be between 1000 and 30000. The default is 1000.
  *   `multiplier` (*type:* `integer()`, *default:* `nil`) - The number of consecutive BFD packets that must be missed before BFD declares that a peer is unavailable. If set, the value must be a value between 5 and 16. The default is 5.
  *   `sessionInitializationMode` (*type:* `String.t`, *default:* `nil`) - The BFD session initialization mode for this BGP peer. If set to ACTIVE, the Cloud Router will initiate the BFD session for this BGP peer. If set to PASSIVE, the Cloud Router will wait for the peer router to initiate the BFD session for this BGP peer. If set to DISABLED, BFD is disabled for this BGP peer. The default is PASSIVE.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :minReceiveInterval => integer() | nil,
          :minTransmitInterval => integer() | nil,
          :multiplier => integer() | nil,
          :sessionInitializationMode => String.t() | nil
        }

  field(:minReceiveInterval)
  field(:minTransmitInterval)
  field(:multiplier)
  field(:sessionInitializationMode)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.RouterBgpPeerBfd do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.RouterBgpPeerBfd.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.RouterBgpPeerBfd do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end