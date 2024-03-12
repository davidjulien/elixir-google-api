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

defmodule GoogleApi.CloudResourceManager.V3.Model.Project do
  @moduledoc """
  A project is a high-level Google Cloud entity. It is a container for ACLs, APIs, App Engine Apps, VMs, and other Google Cloud Platform resources.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Creation time.
  *   `deleteTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time at which this resource was requested for deletion.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Optional. A user-assigned display name of the project. When present it must be between 4 to 30 characters. Allowed characters are: lowercase and uppercase letters, numbers, hyphen, single-quote, double-quote, space, and exclamation point. Example: `My Project`
  *   `etag` (*type:* `String.t`, *default:* `nil`) - Output only. A checksum computed by the server based on the current value of the Project resource. This may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Optional. The labels associated with this project. Label keys must be between 1 and 63 characters long and must conform to the following regular expression: \\[a-z\\](\\[-a-z0-9\\]*\\[a-z0-9\\])?. Label values must be between 0 and 63 characters long and must conform to the regular expression (\\[a-z\\](\\[-a-z0-9\\]*\\[a-z0-9\\])?)?. No more than 64 labels can be associated with a given resource. Clients should store labels in a representation such as JSON that does not depend on specific characters being disallowed. Example: `"myBusinessDimension" : "businessValue"`
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The unique resource name of the project. It is an int64 generated number prefixed by "projects/". Example: `projects/415104041262`
  *   `parent` (*type:* `String.t`, *default:* `nil`) - Optional. A reference to a parent Resource. eg., `organizations/123` or `folders/876`.
  *   `projectId` (*type:* `String.t`, *default:* `nil`) - Immutable. The unique, user-assigned id of the project. It must be 6 to 30 lowercase ASCII letters, digits, or hyphens. It must start with a letter. Trailing hyphens are prohibited. Example: `tokyo-rain-123`
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The project lifecycle state.
  *   `tags` (*type:* `map()`, *default:* `nil`) - Optional. Input only. Immutable. Tag keys/values directly bound to this project. Each item in the map must be expressed as " : ". For example: "123/environment" : "production", "123/costCenter" : "marketing" Note: Currently this field is in Preview.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The most recent time this resource was modified.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :deleteTime => DateTime.t() | nil,
          :displayName => String.t() | nil,
          :etag => String.t() | nil,
          :labels => map() | nil,
          :name => String.t() | nil,
          :parent => String.t() | nil,
          :projectId => String.t() | nil,
          :state => String.t() | nil,
          :tags => map() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:deleteTime, as: DateTime)
  field(:displayName)
  field(:etag)
  field(:labels, type: :map)
  field(:name)
  field(:parent)
  field(:projectId)
  field(:state)
  field(:tags, type: :map)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.CloudResourceManager.V3.Model.Project do
  def decode(value, options) do
    GoogleApi.CloudResourceManager.V3.Model.Project.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudResourceManager.V3.Model.Project do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
