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

defmodule GoogleApi.PrivateCA.V1.Model.Certificate do
  @moduledoc """
  A Certificate corresponds to a signed X.509 certificate issued by a CertificateAuthority.

  ## Attributes

  *   `certificateDescription` (*type:* `GoogleApi.PrivateCA.V1.Model.CertificateDescription.t`, *default:* `nil`) - Output only. A structured description of the issued X.509 certificate.
  *   `certificateTemplate` (*type:* `String.t`, *default:* `nil`) - Immutable. The resource name for a CertificateTemplate used to issue this certificate, in the format `projects/*/locations/*/certificateTemplates/*`. If this is specified, the caller must have the necessary permission to use this template. If this is omitted, no template will be used. This template must be in the same location as the Certificate.
  *   `config` (*type:* `GoogleApi.PrivateCA.V1.Model.CertificateConfig.t`, *default:* `nil`) - Immutable. A description of the certificate and key that does not require X.509 or ASN.1.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time at which this Certificate was created.
  *   `issuerCertificateAuthority` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name of the issuing CertificateAuthority in the format `projects/*/locations/*/caPools/*/certificateAuthorities/*`.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Optional. Labels with user-defined metadata.
  *   `lifetime` (*type:* `String.t`, *default:* `nil`) - Required. Immutable. The desired lifetime of a certificate. Used to create the "not_before_time" and "not_after_time" fields inside an X.509 certificate. Note that the lifetime may be truncated if it would extend past the life of any certificate authority in the issuing chain.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name for this Certificate in the format `projects/*/locations/*/caPools/*/certificates/*`.
  *   `pemCertificate` (*type:* `String.t`, *default:* `nil`) - Output only. The pem-encoded, signed X.509 certificate.
  *   `pemCertificateChain` (*type:* `list(String.t)`, *default:* `nil`) - Output only. The chain that may be used to verify the X.509 certificate. Expected to be in issuer-to-root order according to RFC 5246.
  *   `pemCsr` (*type:* `String.t`, *default:* `nil`) - Immutable. A pem-encoded X.509 certificate signing request (CSR).
  *   `revocationDetails` (*type:* `GoogleApi.PrivateCA.V1.Model.RevocationDetails.t`, *default:* `nil`) - Output only. Details regarding the revocation of this Certificate. This Certificate is considered revoked if and only if this field is present.
  *   `subjectMode` (*type:* `String.t`, *default:* `nil`) - Immutable. Specifies how the Certificate's identity fields are to be decided. If this is omitted, the `DEFAULT` subject mode will be used.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time at which this Certificate was updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :certificateDescription =>
            GoogleApi.PrivateCA.V1.Model.CertificateDescription.t() | nil,
          :certificateTemplate => String.t() | nil,
          :config => GoogleApi.PrivateCA.V1.Model.CertificateConfig.t() | nil,
          :createTime => DateTime.t() | nil,
          :issuerCertificateAuthority => String.t() | nil,
          :labels => map() | nil,
          :lifetime => String.t() | nil,
          :name => String.t() | nil,
          :pemCertificate => String.t() | nil,
          :pemCertificateChain => list(String.t()) | nil,
          :pemCsr => String.t() | nil,
          :revocationDetails => GoogleApi.PrivateCA.V1.Model.RevocationDetails.t() | nil,
          :subjectMode => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:certificateDescription, as: GoogleApi.PrivateCA.V1.Model.CertificateDescription)
  field(:certificateTemplate)
  field(:config, as: GoogleApi.PrivateCA.V1.Model.CertificateConfig)
  field(:createTime, as: DateTime)
  field(:issuerCertificateAuthority)
  field(:labels, type: :map)
  field(:lifetime)
  field(:name)
  field(:pemCertificate)
  field(:pemCertificateChain, type: :list)
  field(:pemCsr)
  field(:revocationDetails, as: GoogleApi.PrivateCA.V1.Model.RevocationDetails)
  field(:subjectMode)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.PrivateCA.V1.Model.Certificate do
  def decode(value, options) do
    GoogleApi.PrivateCA.V1.Model.Certificate.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PrivateCA.V1.Model.Certificate do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end