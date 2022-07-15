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

defmodule GoogleApi.BigQueryReservation.V1.Model.TableReference do
  @moduledoc """
  Fully qualified reference to BigQuery table. Internally stored as google.cloud.bi.v1.BqTableReference.

  ## Attributes

  *   `datasetId` (*type:* `String.t`, *default:* `nil`) - The ID of the dataset in the above project.
  *   `projectId` (*type:* `String.t`, *default:* `nil`) - The assigned project ID of the project.
  *   `tableId` (*type:* `String.t`, *default:* `nil`) - The ID of the table in the above dataset.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :datasetId => String.t() | nil,
          :projectId => String.t() | nil,
          :tableId => String.t() | nil
        }

  field(:datasetId)
  field(:projectId)
  field(:tableId)
end

defimpl Poison.Decoder, for: GoogleApi.BigQueryReservation.V1.Model.TableReference do
  def decode(value, options) do
    GoogleApi.BigQueryReservation.V1.Model.TableReference.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQueryReservation.V1.Model.TableReference do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end