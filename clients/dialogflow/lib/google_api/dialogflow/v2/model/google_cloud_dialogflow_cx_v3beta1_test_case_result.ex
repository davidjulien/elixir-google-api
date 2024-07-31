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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1TestCaseResult do
  @moduledoc """
  Represents a result from running a test case in an agent environment.

  ## Attributes

  *   `conversationTurns` (*type:* `list(GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1ConversationTurn.t)`, *default:* `nil`) - The conversation turns uttered during the test case replay in chronological order.
  *   `environment` (*type:* `String.t`, *default:* `nil`) - Environment where the test was run. If not set, it indicates the draft environment.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The resource name for the test case result. Format: `projects//locations//agents//testCases//results/`.
  *   `testResult` (*type:* `String.t`, *default:* `nil`) - Whether the test case passed in the agent environment.
  *   `testTime` (*type:* `DateTime.t`, *default:* `nil`) - The time that the test was run.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :conversationTurns =>
            list(GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1ConversationTurn.t())
            | nil,
          :environment => String.t() | nil,
          :name => String.t() | nil,
          :testResult => String.t() | nil,
          :testTime => DateTime.t() | nil
        }

  field(:conversationTurns,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1ConversationTurn,
    type: :list
  )

  field(:environment)
  field(:name)
  field(:testResult)
  field(:testTime, as: DateTime)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1TestCaseResult do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1TestCaseResult.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1TestCaseResult do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
