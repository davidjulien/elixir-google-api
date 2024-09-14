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

defmodule GoogleApi.Firebase.V1beta1.Model.WebAppConfig do
  @moduledoc """
  Configuration metadata of a single Firebase App for the web.

  ## Attributes

  *   `apiKey` (*type:* `String.t`, *default:* `nil`) - The [`keyString`](https://cloud.google.com/api-keys/docs/reference/rest/v2/projects.locations.keys#Key.FIELDS.key_string) of the API key associated with the `WebApp`. Note that this value is _not_ the [`apiKeyId`](../projects.webApps#WebApp.FIELDS.api_key_id) (the UID) of the API key associated with the `WebApp`.
  *   `appId` (*type:* `String.t`, *default:* `nil`) - Immutable. The globally unique, Firebase-assigned identifier for the `WebApp`.
  *   `authDomain` (*type:* `String.t`, *default:* `nil`) - The domain Firebase Auth configures for OAuth redirects, in the format: PROJECT_ID.firebaseapp.com
  *   `databaseURL` (*type:* `String.t`, *default:* `nil`) - **DEPRECATED.** _Instead, find the default Firebase Realtime Database instance name using the [list endpoint](https://firebase.google.com/docs/reference/rest/database/database-management/rest/v1beta/projects.locations.instances/list) within the Firebase Realtime Database REST API. Note that the default instance for the Project might not yet be provisioned, so the return might not contain a default instance._ The default Firebase Realtime Database URL.
  *   `locationId` (*type:* `String.t`, *default:* `nil`) - **DEPRECATED.** _Instead, use product-specific REST APIs to find the location of resources._ The ID of the Project's default GCP resource location. The location is one of the available [GCP resource locations](https://firebase.google.com/docs/projects/locations). This field is omitted if the default GCP resource location has not been finalized yet. To set a Project's default GCP resource location, call [`FinalizeDefaultLocation`](../projects.defaultLocation/finalize) after you add Firebase resources to the Project.
  *   `measurementId` (*type:* `String.t`, *default:* `nil`) - The unique Google-assigned identifier of the Google Analytics web stream associated with the `WebApp`. Firebase SDKs use this ID to interact with Google Analytics APIs. This field is only present if the `WebApp` is linked to a web stream in a Google Analytics App + Web property. Learn more about this ID and Google Analytics web streams in the [Analytics documentation](https://support.google.com/analytics/answer/9304153). To generate a `measurementId` and link the `WebApp` with a Google Analytics web stream, call [`AddGoogleAnalytics`](../../v1beta1/projects/addGoogleAnalytics). For apps using the Firebase JavaScript SDK v7.20.0 and later, Firebase dynamically fetches the `measurementId` when your app initializes Analytics. Having this ID in your config object is optional, but it does serve as a fallback in the rare case that the dynamic fetch fails.
  *   `messagingSenderId` (*type:* `String.t`, *default:* `nil`) - The sender ID for use with Firebase Cloud Messaging.
  *   `projectId` (*type:* `String.t`, *default:* `nil`) - Immutable. A user-assigned unique identifier for the `FirebaseProject`.
  *   `projectNumber` (*type:* `String.t`, *default:* `nil`) - Output only. Immutable. The globally unique, Google-assigned canonical identifier for the Project. Use this identifier when configuring integrations and/or making API calls to Google Cloud or third-party services.
  *   `realtimeDatabaseUrl` (*type:* `String.t`, *default:* `nil`) - Optional. Duplicate field for the URL of the default RTDB instances (if there is one) that uses the same field name as the unified V2 config file format. We wanted to make a single config file format for all the app platforms (Android, iOS and web) and we had to pick consistent names for all the fields since there was some varience between the platforms. If the request asks for the V2 format we will populate this field instead of realtime_database_instance_uri.
  *   `storageBucket` (*type:* `String.t`, *default:* `nil`) - **DEPRECATED.** _Instead, find the default Cloud Storage for Firebase bucket using the [list endpoint](https://firebase.google.com/docs/reference/rest/storage/rest/v1beta/projects.buckets/list) within the Cloud Storage for Firebase REST API. Note that the default bucket for the Project might not yet be provisioned, so the return might not contain a default bucket._ The default Cloud Storage for Firebase storage bucket name.
  *   `version` (*type:* `String.t`, *default:* `nil`) - Version of the config specification.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :apiKey => String.t() | nil,
          :appId => String.t() | nil,
          :authDomain => String.t() | nil,
          :databaseURL => String.t() | nil,
          :locationId => String.t() | nil,
          :measurementId => String.t() | nil,
          :messagingSenderId => String.t() | nil,
          :projectId => String.t() | nil,
          :projectNumber => String.t() | nil,
          :realtimeDatabaseUrl => String.t() | nil,
          :storageBucket => String.t() | nil,
          :version => String.t() | nil
        }

  field(:apiKey)
  field(:appId)
  field(:authDomain)
  field(:databaseURL)
  field(:locationId)
  field(:measurementId)
  field(:messagingSenderId)
  field(:projectId)
  field(:projectNumber)
  field(:realtimeDatabaseUrl)
  field(:storageBucket)
  field(:version)
end

defimpl Poison.Decoder, for: GoogleApi.Firebase.V1beta1.Model.WebAppConfig do
  def decode(value, options) do
    GoogleApi.Firebase.V1beta1.Model.WebAppConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Firebase.V1beta1.Model.WebAppConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
