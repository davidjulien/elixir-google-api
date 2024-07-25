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

defmodule GoogleApi.AddressValidation.V1.Model.GoogleMapsAddressvalidationV1Address do
  @moduledoc """
  Details of the post-processed address. Post-processing includes correcting misspelled parts of the address, replacing incorrect parts, and inferring missing parts.

  ## Attributes

  *   `addressComponents` (*type:* `list(GoogleApi.AddressValidation.V1.Model.GoogleMapsAddressvalidationV1AddressComponent.t)`, *default:* `nil`) - Unordered list. The individual address components of the formatted and corrected address, along with validation information. This provides information on the validation status of the individual components. Address components are not ordered in a particular way. Do not make any assumptions on the ordering of the address components in the list.
  *   `formattedAddress` (*type:* `String.t`, *default:* `nil`) - The post-processed address, formatted as a single-line address following the address formatting rules of the region where the address is located.
  *   `missingComponentTypes` (*type:* `list(String.t)`, *default:* `nil`) - The types of components that were expected to be present in a correctly formatted mailing address but were not found in the input AND could not be inferred. Components of this type are not present in `formatted_address`, `postal_address`, or `address_components`. An example might be `['street_number', 'route']` for an input like "Boulder, Colorado, 80301, USA". The list of possible types can be found [here](https://developers.google.com/maps/documentation/geocoding/requests-geocoding#Types).
  *   `postalAddress` (*type:* `GoogleApi.AddressValidation.V1.Model.GoogleTypePostalAddress.t`, *default:* `nil`) - The post-processed address represented as a postal address.
  *   `unconfirmedComponentTypes` (*type:* `list(String.t)`, *default:* `nil`) - The types of the components that are present in the `address_components` but could not be confirmed to be correct. This field is provided for the sake of convenience: its contents are equivalent to iterating through the `address_components` to find the types of all the components where the confirmation_level is not CONFIRMED or the inferred flag is not set to `true`. The list of possible types can be found [here](https://developers.google.com/maps/documentation/geocoding/requests-geocoding#Types).
  *   `unresolvedTokens` (*type:* `list(String.t)`, *default:* `nil`) - Any tokens in the input that could not be resolved. This might be an input that was not recognized as a valid part of an address (for example in an input like "123235253253 Main St, San Francisco, CA, 94105", the unresolved tokens may look like `["123235253253"]` since that does not look like a valid street number.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :addressComponents =>
            list(
              GoogleApi.AddressValidation.V1.Model.GoogleMapsAddressvalidationV1AddressComponent.t()
            )
            | nil,
          :formattedAddress => String.t() | nil,
          :missingComponentTypes => list(String.t()) | nil,
          :postalAddress =>
            GoogleApi.AddressValidation.V1.Model.GoogleTypePostalAddress.t() | nil,
          :unconfirmedComponentTypes => list(String.t()) | nil,
          :unresolvedTokens => list(String.t()) | nil
        }

  field(:addressComponents,
    as: GoogleApi.AddressValidation.V1.Model.GoogleMapsAddressvalidationV1AddressComponent,
    type: :list
  )

  field(:formattedAddress)
  field(:missingComponentTypes, type: :list)
  field(:postalAddress, as: GoogleApi.AddressValidation.V1.Model.GoogleTypePostalAddress)
  field(:unconfirmedComponentTypes, type: :list)
  field(:unresolvedTokens, type: :list)
end

defimpl Poison.Decoder,
  for: GoogleApi.AddressValidation.V1.Model.GoogleMapsAddressvalidationV1Address do
  def decode(value, options) do
    GoogleApi.AddressValidation.V1.Model.GoogleMapsAddressvalidationV1Address.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AddressValidation.V1.Model.GoogleMapsAddressvalidationV1Address do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
