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

defmodule GoogleApi.AssuredWorkloads.V1.Model.GoogleCloudAssuredworkloadsVersioningV1mainWorkloadResourceSettings do
  @moduledoc """
  Represent the custom settings for the resources to be created.

  ## Attributes

  *   `displayName` (*type:* `String.t`, *default:* `nil`) - User-assigned resource display name. If not empty it will be used to create a resource with the specified name.
  *   `resourceId` (*type:* `String.t`, *default:* `nil`) - Resource identifier. For a project this represents project_id. If the project is already taken, the workload creation will fail.
  *   `resourceType` (*type:* `String.t`, *default:* `nil`) - Indicates the type of resource. This field should be specified to correspond the id to the right project type (CONSUMER_PROJECT or ENCRYPTION_KEYS_PROJECT)
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :displayName => String.t() | nil,
          :resourceId => String.t() | nil,
          :resourceType => String.t() | nil
        }

  field(:displayName)
  field(:resourceId)
  field(:resourceType)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.AssuredWorkloads.V1.Model.GoogleCloudAssuredworkloadsVersioningV1mainWorkloadResourceSettings do
  def decode(value, options) do
    GoogleApi.AssuredWorkloads.V1.Model.GoogleCloudAssuredworkloadsVersioningV1mainWorkloadResourceSettings.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.AssuredWorkloads.V1.Model.GoogleCloudAssuredworkloadsVersioningV1mainWorkloadResourceSettings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
