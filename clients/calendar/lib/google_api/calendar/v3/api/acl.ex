# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Calendar.V3.Api.Acl do
  @moduledoc """
  API calls for all endpoints tagged `Acl`.
  """

  alias GoogleApi.Calendar.V3.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Deletes an access control rule.

  ## Parameters

  - connection (GoogleApi.Calendar.V3.Connection): Connection to server
  - calendar_id (String.t): Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the "primary" keyword.
  - rule_id (String.t): ACL rule identifier.
  - optional_params (keyword()): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec calendar_acl_delete(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def calendar_acl_delete(connection, calendar_id, rule_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url("/calendars/{calendarId}/acl/{ruleId}", %{
        "calendarId" => URI.encode(calendar_id, &URI.char_unreserved?/1),
        "ruleId" => URI.encode(rule_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """
  Returns an access control rule.

  ## Parameters

  - connection (GoogleApi.Calendar.V3.Connection): Connection to server
  - calendar_id (String.t): Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the "primary" keyword.
  - rule_id (String.t): ACL rule identifier.
  - optional_params (keyword()): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.Calendar.V3.Model.AclRule{}} on success
  {:error, info} on failure
  """
  @spec calendar_acl_get(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.Calendar.V3.Model.AclRule.t()} | {:error, Tesla.Env.t()}
  def calendar_acl_get(connection, calendar_id, rule_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/calendars/{calendarId}/acl/{ruleId}", %{
        "calendarId" => URI.encode(calendar_id, &URI.char_unreserved?/1),
        "ruleId" => URI.encode(rule_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Calendar.V3.Model.AclRule{}])
  end

  @doc """
  Creates an access control rule.

  ## Parameters

  - connection (GoogleApi.Calendar.V3.Connection): Connection to server
  - calendar_id (String.t): Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the "primary" keyword.
  - optional_params (keyword()): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :sendNotifications (boolean()): Whether to send notifications about the calendar sharing change. Optional. The default is True.
    - :body (GoogleApi.Calendar.V3.Model.AclRule.t): 

  ## Returns

  {:ok, %GoogleApi.Calendar.V3.Model.AclRule{}} on success
  {:error, info} on failure
  """
  @spec calendar_acl_insert(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Calendar.V3.Model.AclRule.t()} | {:error, Tesla.Env.t()}
  def calendar_acl_insert(connection, calendar_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :sendNotifications => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/calendars/{calendarId}/acl", %{
        "calendarId" => URI.encode(calendar_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Calendar.V3.Model.AclRule{}])
  end

  @doc """
  Returns the rules in the access control list for the calendar.

  ## Parameters

  - connection (GoogleApi.Calendar.V3.Connection): Connection to server
  - calendar_id (String.t): Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the "primary" keyword.
  - optional_params (keyword()): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :maxResults (integer()): Maximum number of entries returned on one result page. By default the value is 100 entries. The page size can never be larger than 250 entries. Optional.
    - :pageToken (String.t): Token specifying which result page to return. Optional.
    - :showDeleted (boolean()): Whether to include deleted ACLs in the result. Deleted ACLs are represented by role equal to "none". Deleted ACLs will always be included if syncToken is provided. Optional. The default is False.
    - :syncToken (String.t): Token obtained from the nextSyncToken field returned on the last page of results from the previous list request. It makes the result of this list request contain only entries that have changed since then. All entries deleted since the previous list request will always be in the result set and it is not allowed to set showDeleted to False.
  If the syncToken expires, the server will respond with a 410 GONE response code and the client should clear its storage and perform a full synchronization without any syncToken.
  Learn more about incremental synchronization.
  Optional. The default is to return all entries.

  ## Returns

  {:ok, %GoogleApi.Calendar.V3.Model.Acl{}} on success
  {:error, info} on failure
  """
  @spec calendar_acl_list(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Calendar.V3.Model.Acl.t()} | {:error, Tesla.Env.t()}
  def calendar_acl_list(connection, calendar_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :maxResults => :query,
      :pageToken => :query,
      :showDeleted => :query,
      :syncToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/calendars/{calendarId}/acl", %{
        "calendarId" => URI.encode(calendar_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Calendar.V3.Model.Acl{}])
  end

  @doc """
  Updates an access control rule. This method supports patch semantics.

  ## Parameters

  - connection (GoogleApi.Calendar.V3.Connection): Connection to server
  - calendar_id (String.t): Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the "primary" keyword.
  - rule_id (String.t): ACL rule identifier.
  - optional_params (keyword()): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :sendNotifications (boolean()): Whether to send notifications about the calendar sharing change. Note that there are no notifications on access removal. Optional. The default is True.
    - :body (GoogleApi.Calendar.V3.Model.AclRule.t): 

  ## Returns

  {:ok, %GoogleApi.Calendar.V3.Model.AclRule{}} on success
  {:error, info} on failure
  """
  @spec calendar_acl_patch(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.Calendar.V3.Model.AclRule.t()} | {:error, Tesla.Env.t()}
  def calendar_acl_patch(connection, calendar_id, rule_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :sendNotifications => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:patch)
      |> Request.url("/calendars/{calendarId}/acl/{ruleId}", %{
        "calendarId" => URI.encode(calendar_id, &URI.char_unreserved?/1),
        "ruleId" => URI.encode(rule_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Calendar.V3.Model.AclRule{}])
  end

  @doc """
  Updates an access control rule.

  ## Parameters

  - connection (GoogleApi.Calendar.V3.Connection): Connection to server
  - calendar_id (String.t): Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the "primary" keyword.
  - rule_id (String.t): ACL rule identifier.
  - optional_params (keyword()): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :sendNotifications (boolean()): Whether to send notifications about the calendar sharing change. Note that there are no notifications on access removal. Optional. The default is True.
    - :body (GoogleApi.Calendar.V3.Model.AclRule.t): 

  ## Returns

  {:ok, %GoogleApi.Calendar.V3.Model.AclRule{}} on success
  {:error, info} on failure
  """
  @spec calendar_acl_update(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.Calendar.V3.Model.AclRule.t()} | {:error, Tesla.Env.t()}
  def calendar_acl_update(connection, calendar_id, rule_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :sendNotifications => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:put)
      |> Request.url("/calendars/{calendarId}/acl/{ruleId}", %{
        "calendarId" => URI.encode(calendar_id, &URI.char_unreserved?/1),
        "ruleId" => URI.encode(rule_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Calendar.V3.Model.AclRule{}])
  end

  @doc """
  Watch for changes to ACL resources.

  ## Parameters

  - connection (GoogleApi.Calendar.V3.Connection): Connection to server
  - calendar_id (String.t): Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the "primary" keyword.
  - optional_params (keyword()): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :maxResults (integer()): Maximum number of entries returned on one result page. By default the value is 100 entries. The page size can never be larger than 250 entries. Optional.
    - :pageToken (String.t): Token specifying which result page to return. Optional.
    - :showDeleted (boolean()): Whether to include deleted ACLs in the result. Deleted ACLs are represented by role equal to "none". Deleted ACLs will always be included if syncToken is provided. Optional. The default is False.
    - :syncToken (String.t): Token obtained from the nextSyncToken field returned on the last page of results from the previous list request. It makes the result of this list request contain only entries that have changed since then. All entries deleted since the previous list request will always be in the result set and it is not allowed to set showDeleted to False.
  If the syncToken expires, the server will respond with a 410 GONE response code and the client should clear its storage and perform a full synchronization without any syncToken.
  Learn more about incremental synchronization.
  Optional. The default is to return all entries.
    - :resource (GoogleApi.Calendar.V3.Model.Channel.t): 

  ## Returns

  {:ok, %GoogleApi.Calendar.V3.Model.Channel{}} on success
  {:error, info} on failure
  """
  @spec calendar_acl_watch(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Calendar.V3.Model.Channel.t()} | {:error, Tesla.Env.t()}
  def calendar_acl_watch(connection, calendar_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :maxResults => :query,
      :pageToken => :query,
      :showDeleted => :query,
      :syncToken => :query,
      :resource => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/calendars/{calendarId}/acl/watch", %{
        "calendarId" => URI.encode(calendar_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Calendar.V3.Model.Channel{}])
  end
end
