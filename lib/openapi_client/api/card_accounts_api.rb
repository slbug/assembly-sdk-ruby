=begin
#Assembly API

#Assembly (formely PromisePay) is a powerful payments engine custom-built for platforms and marketplaces.

The version of the OpenAPI document: 2.0
Contact: support@assemblypayments.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.1

=end

require 'cgi'

module OpenapiClient
  class CardAccountsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Card Account
    # Create a Credit **Card Account** to be used as a funding source. Store the returned `:id` and use it for a `make_payment` **Item Action** call. The `:id` is also referred to as a **token** when involving Credit Cards. 
    # @param card_account_request_body [CardAccountRequestBody] 
    # @param [Hash] opts the optional parameters
    # @return [CardAccount]
    def create_card_account(card_account_request_body, opts = {})
      data, _status_code, _headers = create_card_account_with_http_info(card_account_request_body, opts)
      data
    end

    # Create Card Account
    # Create a Credit **Card Account** to be used as a funding source. Store the returned &#x60;:id&#x60; and use it for a &#x60;make_payment&#x60; **Item Action** call. The &#x60;:id&#x60; is also referred to as a **token** when involving Credit Cards. 
    # @param card_account_request_body [CardAccountRequestBody] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CardAccount, Integer, Hash)>] CardAccount data, response status code and response headers
    def create_card_account_with_http_info(card_account_request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CardAccountsApi.create_card_account ...'
      end
      # verify the required parameter 'card_account_request_body' is set
      if @api_client.config.client_side_validation && card_account_request_body.nil?
        fail ArgumentError, "Missing the required parameter 'card_account_request_body' when calling CardAccountsApi.create_card_account"
      end
      # resource path
      local_var_path = '/card_accounts'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(card_account_request_body)

      # return_type
      return_type = opts[:debug_return_type] || 'CardAccount'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth', 'oAuth2ClientCredentials']

      new_options = opts.merge(
        :operation => :"CardAccountsApi.create_card_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CardAccountsApi#create_card_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Redact Card Account
    # Redact a Credit **Card Account** using a given `:id`. Redacted Credit **Card Accounts** can no longer be used as a funding source. 
    # @param id [String] ID of the card account to be deleted
    # @param [Hash] opts the optional parameters
    # @return [CardAccountDeletion]
    def redact_card_account(id, opts = {})
      data, _status_code, _headers = redact_card_account_with_http_info(id, opts)
      data
    end

    # Redact Card Account
    # Redact a Credit **Card Account** using a given &#x60;:id&#x60;. Redacted Credit **Card Accounts** can no longer be used as a funding source. 
    # @param id [String] ID of the card account to be deleted
    # @param [Hash] opts the optional parameters
    # @return [Array<(CardAccountDeletion, Integer, Hash)>] CardAccountDeletion data, response status code and response headers
    def redact_card_account_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CardAccountsApi.redact_card_account ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CardAccountsApi.redact_card_account"
      end
      # resource path
      local_var_path = '/card_accounts/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'CardAccountDeletion'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth', 'oAuth2ClientCredentials']

      new_options = opts.merge(
        :operation => :"CardAccountsApi.redact_card_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CardAccountsApi#redact_card_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Show Card Account
    # Show details of a specific Credit **Card Account** using a given `:id`. You can toggle the card account number display to show the first 6 digits in addition to the last 4 digits. Contact Assembly if you want to toggle the card account display. 
    # @param id [String] Card account ID
    # @param [Hash] opts the optional parameters
    # @return [CardAccount]
    def show_card_account(id, opts = {})
      data, _status_code, _headers = show_card_account_with_http_info(id, opts)
      data
    end

    # Show Card Account
    # Show details of a specific Credit **Card Account** using a given &#x60;:id&#x60;. You can toggle the card account number display to show the first 6 digits in addition to the last 4 digits. Contact Assembly if you want to toggle the card account display. 
    # @param id [String] Card account ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(CardAccount, Integer, Hash)>] CardAccount data, response status code and response headers
    def show_card_account_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CardAccountsApi.show_card_account ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CardAccountsApi.show_card_account"
      end
      # resource path
      local_var_path = '/card_accounts/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'CardAccount'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth', 'oAuth2ClientCredentials']

      new_options = opts.merge(
        :operation => :"CardAccountsApi.show_card_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CardAccountsApi#show_card_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Show Card Account User
    # Show the **User** the Credit **Card Account** is associated with using a given `:id`.
    # @param id [String] Card account ID
    # @param [Hash] opts the optional parameters
    # @return [SingleUser]
    def show_card_account_user(id, opts = {})
      data, _status_code, _headers = show_card_account_user_with_http_info(id, opts)
      data
    end

    # Show Card Account User
    # Show the **User** the Credit **Card Account** is associated with using a given &#x60;:id&#x60;.
    # @param id [String] Card account ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(SingleUser, Integer, Hash)>] SingleUser data, response status code and response headers
    def show_card_account_user_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CardAccountsApi.show_card_account_user ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CardAccountsApi.show_card_account_user"
      end
      # resource path
      local_var_path = '/card_accounts/{id}/users'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SingleUser'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth', 'oAuth2ClientCredentials']

      new_options = opts.merge(
        :operation => :"CardAccountsApi.show_card_account_user",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CardAccountsApi#show_card_account_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Verify Card
    # Where pre-authorization is enabled on a platform, verifies a **Card Account** when a **Card Account** is successfully verified, its verification status is `verified`.
    # @param id [String] Card account ID
    # @param [Hash] opts the optional parameters
    # @option opts [CardAccountVerifyRequestBody] :card_account_verify_request_body 
    # @return [CardAccount]
    def verify_card(id, opts = {})
      data, _status_code, _headers = verify_card_with_http_info(id, opts)
      data
    end

    # Verify Card
    # Where pre-authorization is enabled on a platform, verifies a **Card Account** when a **Card Account** is successfully verified, its verification status is &#x60;verified&#x60;.
    # @param id [String] Card account ID
    # @param [Hash] opts the optional parameters
    # @option opts [CardAccountVerifyRequestBody] :card_account_verify_request_body 
    # @return [Array<(CardAccount, Integer, Hash)>] CardAccount data, response status code and response headers
    def verify_card_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CardAccountsApi.verify_card ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CardAccountsApi.verify_card"
      end
      # resource path
      local_var_path = '/card_accounts/{id}/verify'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'card_account_verify_request_body'])

      # return_type
      return_type = opts[:debug_return_type] || 'CardAccount'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth', 'oAuth2ClientCredentials']

      new_options = opts.merge(
        :operation => :"CardAccountsApi.verify_card",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CardAccountsApi#verify_card\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
