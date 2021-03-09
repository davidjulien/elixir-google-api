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

defmodule GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1PodStatus do
  @moduledoc """


  ## Attributes

  *   `appVersion` (*type:* `String.t`, *default:* `nil`) - Version of the application running in the pod.
  *   `deploymentStatus` (*type:* `String.t`, *default:* `nil`) - Status of the deployment. Valid values include: - `deployed`: Successful. - `error` : Failed. - `pending` : Pod has not yet reported on the deployment.
  *   `deploymentStatusTime` (*type:* `String.t`, *default:* `nil`) - Time the deployment status was reported in milliseconds since epoch.
  *   `deploymentTime` (*type:* `String.t`, *default:* `nil`) - Time the proxy was deployed in milliseconds since epoch.
  *   `podName` (*type:* `String.t`, *default:* `nil`) - Name of the pod which is reporting the status.
  *   `podStatus` (*type:* `String.t`, *default:* `nil`) - Overall status of the pod (not this specific deployment). Valid values include: - `active`: Up to date. - `stale` : Recently out of date. Pods that have not reported status in a long time are excluded from the output.
  *   `podStatusTime` (*type:* `String.t`, *default:* `nil`) - Time the pod status was reported in milliseconds since epoch.
  *   `statusCode` (*type:* `String.t`, *default:* `nil`) - Code associated with the deployment status.
  *   `statusCodeDetails` (*type:* `String.t`, *default:* `nil`) - Human-readable message associated with the status code.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :appVersion => String.t() | nil,
          :deploymentStatus => String.t() | nil,
          :deploymentStatusTime => String.t() | nil,
          :deploymentTime => String.t() | nil,
          :podName => String.t() | nil,
          :podStatus => String.t() | nil,
          :podStatusTime => String.t() | nil,
          :statusCode => String.t() | nil,
          :statusCodeDetails => String.t() | nil
        }

  field(:appVersion)
  field(:deploymentStatus)
  field(:deploymentStatusTime)
  field(:deploymentTime)
  field(:podName)
  field(:podStatus)
  field(:podStatusTime)
  field(:statusCode)
  field(:statusCodeDetails)
end

defimpl Poison.Decoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1PodStatus do
  def decode(value, options) do
    GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1PodStatus.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1PodStatus do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
