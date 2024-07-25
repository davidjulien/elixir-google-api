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

defmodule GoogleApi.Compute.V1.Model.RouterBgpPeer do
  @moduledoc """


  ## Attributes

  *   `advertiseMode` (*type:* `String.t`, *default:* `nil`) - User-specified flag to indicate which mode to use for advertisement.
  *   `advertisedGroups` (*type:* `list(String.t)`, *default:* `nil`) - User-specified list of prefix groups to advertise in custom mode, which currently supports the following option: - ALL_SUBNETS: Advertises all of the router's own VPC subnets. This excludes any routes learned for subnets that use VPC Network Peering. Note that this field can only be populated if advertise_mode is CUSTOM and overrides the list defined for the router (in the "bgp" message). These groups are advertised in addition to any specified prefixes. Leave this field blank to advertise no custom groups.
  *   `advertisedIpRanges` (*type:* `list(GoogleApi.Compute.V1.Model.RouterAdvertisedIpRange.t)`, *default:* `nil`) - User-specified list of individual IP ranges to advertise in custom mode. This field can only be populated if advertise_mode is CUSTOM and overrides the list defined for the router (in the "bgp" message). These IP ranges are advertised in addition to any specified groups. Leave this field blank to advertise no custom IP ranges.
  *   `advertisedRoutePriority` (*type:* `integer()`, *default:* `nil`) - The priority of routes advertised to this BGP peer. Where there is more than one matching route of maximum length, the routes with the lowest priority value win.
  *   `bfd` (*type:* `GoogleApi.Compute.V1.Model.RouterBgpPeerBfd.t`, *default:* `nil`) - BFD configuration for the BGP peering.
  *   `customLearnedIpRanges` (*type:* `list(GoogleApi.Compute.V1.Model.RouterBgpPeerCustomLearnedIpRange.t)`, *default:* `nil`) - A list of user-defined custom learned route IP address ranges for a BGP session.
  *   `customLearnedRoutePriority` (*type:* `integer()`, *default:* `nil`) - The user-defined custom learned route priority for a BGP session. This value is applied to all custom learned route ranges for the session. You can choose a value from `0` to `65335`. If you don't provide a value, Google Cloud assigns a priority of `100` to the ranges.
  *   `enable` (*type:* `String.t`, *default:* `nil`) - The status of the BGP peer connection. If set to FALSE, any active session with the peer is terminated and all associated routing information is removed. If set to TRUE, the peer connection can be established with routing information. The default is TRUE.
  *   `enableIpv4` (*type:* `boolean()`, *default:* `nil`) - Enable IPv4 traffic over BGP Peer. It is enabled by default if the peerIpAddress is version 4.
  *   `enableIpv6` (*type:* `boolean()`, *default:* `nil`) - Enable IPv6 traffic over BGP Peer. It is enabled by default if the peerIpAddress is version 6.
  *   `exportPolicies` (*type:* `list(String.t)`, *default:* `nil`) - List of export policies applied to this peer, in the order they must be evaluated. The name must correspond to an existing policy that has ROUTE_POLICY_TYPE_EXPORT type. Note that Route Policies are currently available in preview. Please use Beta API to use Route Policies.
  *   `importPolicies` (*type:* `list(String.t)`, *default:* `nil`) - List of import policies applied to this peer, in the order they must be evaluated. The name must correspond to an existing policy that has ROUTE_POLICY_TYPE_IMPORT type. Note that Route Policies are currently available in preview. Please use Beta API to use Route Policies.
  *   `interfaceName` (*type:* `String.t`, *default:* `nil`) - Name of the interface the BGP peer is associated with.
  *   `ipAddress` (*type:* `String.t`, *default:* `nil`) - IP address of the interface inside Google Cloud Platform.
  *   `ipv4NexthopAddress` (*type:* `String.t`, *default:* `nil`) - IPv4 address of the interface inside Google Cloud Platform.
  *   `ipv6NexthopAddress` (*type:* `String.t`, *default:* `nil`) - IPv6 address of the interface inside Google Cloud Platform.
  *   `managementType` (*type:* `String.t`, *default:* `nil`) - [Output Only] The resource that configures and manages this BGP peer. - MANAGED_BY_USER is the default value and can be managed by you or other users - MANAGED_BY_ATTACHMENT is a BGP peer that is configured and managed by Cloud Interconnect, specifically by an InterconnectAttachment of type PARTNER. Google automatically creates, updates, and deletes this type of BGP peer when the PARTNER InterconnectAttachment is created, updated, or deleted. 
  *   `md5AuthenticationKeyName` (*type:* `String.t`, *default:* `nil`) - Present if MD5 authentication is enabled for the peering. Must be the name of one of the entries in the Router.md5_authentication_keys. The field must comply with RFC1035.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of this BGP peer. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  *   `peerAsn` (*type:* `integer()`, *default:* `nil`) - Peer BGP Autonomous System Number (ASN). Each BGP interface may use a different value.
  *   `peerIpAddress` (*type:* `String.t`, *default:* `nil`) - IP address of the BGP interface outside Google Cloud Platform.
  *   `peerIpv4NexthopAddress` (*type:* `String.t`, *default:* `nil`) - IPv4 address of the BGP interface outside Google Cloud Platform.
  *   `peerIpv6NexthopAddress` (*type:* `String.t`, *default:* `nil`) - IPv6 address of the BGP interface outside Google Cloud Platform.
  *   `routerApplianceInstance` (*type:* `String.t`, *default:* `nil`) - URI of the VM instance that is used as third-party router appliances such as Next Gen Firewalls, Virtual Routers, or Router Appliances. The VM instance must be located in zones contained in the same region as this Cloud Router. The VM instance is the peer side of the BGP session.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :advertiseMode => String.t() | nil,
          :advertisedGroups => list(String.t()) | nil,
          :advertisedIpRanges =>
            list(GoogleApi.Compute.V1.Model.RouterAdvertisedIpRange.t()) | nil,
          :advertisedRoutePriority => integer() | nil,
          :bfd => GoogleApi.Compute.V1.Model.RouterBgpPeerBfd.t() | nil,
          :customLearnedIpRanges =>
            list(GoogleApi.Compute.V1.Model.RouterBgpPeerCustomLearnedIpRange.t()) | nil,
          :customLearnedRoutePriority => integer() | nil,
          :enable => String.t() | nil,
          :enableIpv4 => boolean() | nil,
          :enableIpv6 => boolean() | nil,
          :exportPolicies => list(String.t()) | nil,
          :importPolicies => list(String.t()) | nil,
          :interfaceName => String.t() | nil,
          :ipAddress => String.t() | nil,
          :ipv4NexthopAddress => String.t() | nil,
          :ipv6NexthopAddress => String.t() | nil,
          :managementType => String.t() | nil,
          :md5AuthenticationKeyName => String.t() | nil,
          :name => String.t() | nil,
          :peerAsn => integer() | nil,
          :peerIpAddress => String.t() | nil,
          :peerIpv4NexthopAddress => String.t() | nil,
          :peerIpv6NexthopAddress => String.t() | nil,
          :routerApplianceInstance => String.t() | nil
        }

  field(:advertiseMode)
  field(:advertisedGroups, type: :list)
  field(:advertisedIpRanges, as: GoogleApi.Compute.V1.Model.RouterAdvertisedIpRange, type: :list)
  field(:advertisedRoutePriority)
  field(:bfd, as: GoogleApi.Compute.V1.Model.RouterBgpPeerBfd)

  field(:customLearnedIpRanges,
    as: GoogleApi.Compute.V1.Model.RouterBgpPeerCustomLearnedIpRange,
    type: :list
  )

  field(:customLearnedRoutePriority)
  field(:enable)
  field(:enableIpv4)
  field(:enableIpv6)
  field(:exportPolicies, type: :list)
  field(:importPolicies, type: :list)
  field(:interfaceName)
  field(:ipAddress)
  field(:ipv4NexthopAddress)
  field(:ipv6NexthopAddress)
  field(:managementType)
  field(:md5AuthenticationKeyName)
  field(:name)
  field(:peerAsn)
  field(:peerIpAddress)
  field(:peerIpv4NexthopAddress)
  field(:peerIpv6NexthopAddress)
  field(:routerApplianceInstance)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.RouterBgpPeer do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.RouterBgpPeer.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.RouterBgpPeer do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
