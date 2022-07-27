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

defmodule GoogleApi.Forms.V1.Model.QuestionItem do
  @moduledoc """
  A form item containing a single question.

  ## Attributes

  *   `image` (*type:* `GoogleApi.Forms.V1.Model.Image.t`, *default:* `nil`) - The image displayed within the question.
  *   `question` (*type:* `GoogleApi.Forms.V1.Model.Question.t`, *default:* `nil`) - Required. The displayed question.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :image => GoogleApi.Forms.V1.Model.Image.t() | nil,
          :question => GoogleApi.Forms.V1.Model.Question.t() | nil
        }

  field(:image, as: GoogleApi.Forms.V1.Model.Image)
  field(:question, as: GoogleApi.Forms.V1.Model.Question)
end

defimpl Poison.Decoder, for: GoogleApi.Forms.V1.Model.QuestionItem do
  def decode(value, options) do
    GoogleApi.Forms.V1.Model.QuestionItem.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Forms.V1.Model.QuestionItem do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end