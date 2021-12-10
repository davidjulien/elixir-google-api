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

defmodule GoogleApi.NetworkSecurity.V1.Model.ClientTlsPolicy do
  @moduledoc """
  ClientTlsPolicy is a resource that specifies how a client should authenticate connections to backends of a service. This resource itself does not affect configuration unless it is attached to a backend service resource.

  ## Attributes

  *   `clientCertificate` (*type:* `GoogleApi.NetworkSecurity.V1.Model.GoogleCloudNetworksecurityV1CertificateProvider.t`, *default:* `nil`) - Optional. Defines a mechanism to provision client identity (public and private keys) for peer to peer authentication. The presence of this dictates mTLS.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The timestamp when the resource was created.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. Free-text description of the resource.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Optional. Set of label tags associated with the resource.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. Name of the ClientTlsPolicy resource. It matches the pattern `projects/*/locations/{location}/clientTlsPolicies/{client_tls_policy}`
  *   `serverValidationCa` (*type:* `list(GoogleApi.NetworkSecurity.V1.Model.ValidationCA.t)`, *default:* `nil`) - Optional. Defines the mechanism to obtain the Certificate Authority certificate to validate the server certificate. If empty, client does not validate the server certificate.
  *   `sni` (*type:* `String.t`, *default:* `nil`) - Optional. Server Name Indication string to present to the server during TLS handshake. E.g: "secure.example.com".
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The timestamp when the resource was updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clientCertificate =>
            GoogleApi.NetworkSecurity.V1.Model.GoogleCloudNetworksecurityV1CertificateProvider.t()
            | nil,
          :createTime => DateTime.t() | nil,
          :description => String.t() | nil,
          :labels => map() | nil,
          :name => String.t() | nil,
          :serverValidationCa => list(GoogleApi.NetworkSecurity.V1.Model.ValidationCA.t()) | nil,
          :sni => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:clientCertificate,
    as: GoogleApi.NetworkSecurity.V1.Model.GoogleCloudNetworksecurityV1CertificateProvider
  )

  field(:createTime, as: DateTime)
  field(:description)
  field(:labels, type: :map)
  field(:name)
  field(:serverValidationCa, as: GoogleApi.NetworkSecurity.V1.Model.ValidationCA, type: :list)
  field(:sni)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.NetworkSecurity.V1.Model.ClientTlsPolicy do
  def decode(value, options) do
    GoogleApi.NetworkSecurity.V1.Model.ClientTlsPolicy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.NetworkSecurity.V1.Model.ClientTlsPolicy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end