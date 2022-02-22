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

defmodule GoogleApi.Content.V21.Model.OrderShipment do
  @moduledoc """


  ## Attributes

  *   `carrier` (*type:* `String.t`, *default:* `nil`) - The carrier handling the shipment. For supported carriers, Google includes the carrier name and tracking URL in emails to customers. For select supported carriers, Google also automatically updates the shipment status based on the provided shipment ID. *Note:* You can also use unsupported carriers, but emails to customers won't include the carrier name or tracking URL, and there will be no automatic order status updates. Supported carriers for "US" are: - "`ups`" (United Parcel Service) *automatic status updates* - "`usps`" (United States Postal Service) *automatic status updates* - "`fedex`" (FedEx) *automatic status updates * - "`dhl`" (DHL eCommerce) *automatic status updates* (US only) - "`ontrac`" (OnTrac) *automatic status updates * - "`dhl express`" (DHL Express) - "`deliv`" (Deliv) - "`dynamex`" (TForce) - "`lasership`" (LaserShip) - "`mpx`" (Military Parcel Xpress) - "`uds`" (United Delivery Service) - "`efw`" (Estes Forwarding Worldwide) - "`jd logistics`" (JD Logistics) - "`yunexpress`" (YunExpress) - "`china post`" (China Post) - "`china ems`" (China Post Express Mail Service) - "`singapore post`" (Singapore Post) - "`pos malaysia`" (Pos Malaysia) - "`postnl`" (PostNL) - "`ptt`" (PTT Turkish Post) - "`eub`" (ePacket) - "`chukou1`" (Chukou1 Logistics) - "`bestex`" (Best Express) - "`canada post`" (Canada Post) - "`purolator`" (Purolator) - "`canpar`" (Canpar) - "`india post`" (India Post) - "`blue dart`" (Blue Dart) - "`delhivery`" (Delhivery) - "`dtdc`" (DTDC) - "`tpc india`" (TPC India) - "`lso`" (Lone Star Overnight) - "`tww`" (Team Worldwide) Supported carriers for FR are: - "`la poste`" (La Poste) *automatic status updates * - "`colissimo`" (Colissimo by La Poste) *automatic status updates* - "`ups`" (United Parcel Service) *automatic status updates * - "`chronopost`" (Chronopost by La Poste) - "`gls`" (General Logistics Systems France) - "`dpd`" (DPD Group by GeoPost) - "`bpost`" (Belgian Post Group) - "`colis prive`" (Colis Privé) - "`boxtal`" (Boxtal) - "`geodis`" (GEODIS) - "`tnt`" (TNT) - "`db schenker`" (DB Schenker) - "`aramex`" (Aramex) 
  *   `creationDate` (*type:* `String.t`, *default:* `nil`) - Date on which the shipment has been created, in ISO 8601 format.
  *   `deliveryDate` (*type:* `String.t`, *default:* `nil`) - Date on which the shipment has been delivered, in ISO 8601 format. Present only if `status` is `delivered`
  *   `id` (*type:* `String.t`, *default:* `nil`) - The ID of the shipment.
  *   `lineItems` (*type:* `list(GoogleApi.Content.V21.Model.OrderShipmentLineItemShipment.t)`, *default:* `nil`) - The line items that are shipped.
  *   `scheduledDeliveryDetails` (*type:* `GoogleApi.Content.V21.Model.OrderShipmentScheduledDeliveryDetails.t`, *default:* `nil`) - Delivery details of the shipment if scheduling is needed.
  *   `shipmentGroupId` (*type:* `String.t`, *default:* `nil`) - The shipment group ID of the shipment. This is set in shiplineitems request.
  *   `status` (*type:* `String.t`, *default:* `nil`) - The status of the shipment. Acceptable values are: - "`delivered`" - "`readyForPickup`" - "`shipped`" - "`undeliverable`" 
  *   `trackingId` (*type:* `String.t`, *default:* `nil`) - The tracking ID for the shipment.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :carrier => String.t() | nil,
          :creationDate => String.t() | nil,
          :deliveryDate => String.t() | nil,
          :id => String.t() | nil,
          :lineItems => list(GoogleApi.Content.V21.Model.OrderShipmentLineItemShipment.t()) | nil,
          :scheduledDeliveryDetails =>
            GoogleApi.Content.V21.Model.OrderShipmentScheduledDeliveryDetails.t() | nil,
          :shipmentGroupId => String.t() | nil,
          :status => String.t() | nil,
          :trackingId => String.t() | nil
        }

  field(:carrier)
  field(:creationDate)
  field(:deliveryDate)
  field(:id)
  field(:lineItems, as: GoogleApi.Content.V21.Model.OrderShipmentLineItemShipment, type: :list)

  field(:scheduledDeliveryDetails,
    as: GoogleApi.Content.V21.Model.OrderShipmentScheduledDeliveryDetails
  )

  field(:shipmentGroupId)
  field(:status)
  field(:trackingId)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.OrderShipment do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.OrderShipment.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.OrderShipment do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
