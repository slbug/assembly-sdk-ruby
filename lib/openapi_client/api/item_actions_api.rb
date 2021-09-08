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
  class ItemActionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Authorize Payment
    # Where pre-authentication is enabled on a platform, initiates a credit card payment authorization for an item. When an authorization is successful, your platform holds the item amount for capture, but there is no transfer of funds happening. This call is used with the Capture Payment or Void Payment calls. 
    # @param id [String] Marketplace / Platform item ID
    # @param card_account_id_request_body [CardAccountIdRequestBody] 
    # @param [Hash] opts the optional parameters
    # @return [SingleItem]
    def authorize_payment(id, card_account_id_request_body, opts = {})
      data, _status_code, _headers = authorize_payment_with_http_info(id, card_account_id_request_body, opts)
      data
    end

    # Authorize Payment
    # Where pre-authentication is enabled on a platform, initiates a credit card payment authorization for an item. When an authorization is successful, your platform holds the item amount for capture, but there is no transfer of funds happening. This call is used with the Capture Payment or Void Payment calls. 
    # @param id [String] Marketplace / Platform item ID
    # @param card_account_id_request_body [CardAccountIdRequestBody] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SingleItem, Integer, Hash)>] SingleItem data, response status code and response headers
    def authorize_payment_with_http_info(id, card_account_id_request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ItemActionsApi.authorize_payment ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ItemActionsApi.authorize_payment"
      end
      # verify the required parameter 'card_account_id_request_body' is set
      if @api_client.config.client_side_validation && card_account_id_request_body.nil?
        fail ArgumentError, "Missing the required parameter 'card_account_id_request_body' when calling ItemActionsApi.authorize_payment"
      end
      # resource path
      local_var_path = '/items/{id}/authorize_payment'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(card_account_id_request_body)

      # return_type
      return_type = opts[:debug_return_type] || 'SingleItem'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth', 'oAuth2ClientCredentials']

      new_options = opts.merge(
        :operation => :"ItemActionsApi.authorize_payment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ItemActionsApi#authorize_payment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Cancel
    # Cancel an **Item**. This will transition the **Item** state to `cancelled`. **Items** can only be cancelled if they haven’t been actioned in any other way.
    # @param id [String] Marketplace / Platform item ID
    # @param [Hash] opts the optional parameters
    # @return [SingleItem]
    def cancel_item(id, opts = {})
      data, _status_code, _headers = cancel_item_with_http_info(id, opts)
      data
    end

    # Cancel
    # Cancel an **Item**. This will transition the **Item** state to &#x60;cancelled&#x60;. **Items** can only be cancelled if they haven’t been actioned in any other way.
    # @param id [String] Marketplace / Platform item ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(SingleItem, Integer, Hash)>] SingleItem data, response status code and response headers
    def cancel_item_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ItemActionsApi.cancel_item ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ItemActionsApi.cancel_item"
      end
      # resource path
      local_var_path = '/items/{id}/cancel'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'SingleItem'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth', 'oAuth2ClientCredentials']

      new_options = opts.merge(
        :operation => :"ItemActionsApi.cancel_item",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ItemActionsApi#cancel_item\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Capture Payment
    # Where pre-authentication is enabled on a platform, completes a credit card payment for an item whose payment is authorized. This call is used with the Authorize Payment call. 
    # @param id [String] Marketplace / Platform item ID
    # @param [Hash] opts the optional parameters
    # @return [SingleItem]
    def capture_payment(id, opts = {})
      data, _status_code, _headers = capture_payment_with_http_info(id, opts)
      data
    end

    # Capture Payment
    # Where pre-authentication is enabled on a platform, completes a credit card payment for an item whose payment is authorized. This call is used with the Authorize Payment call. 
    # @param id [String] Marketplace / Platform item ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(SingleItem, Integer, Hash)>] SingleItem data, response status code and response headers
    def capture_payment_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ItemActionsApi.capture_payment ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ItemActionsApi.capture_payment"
      end
      # resource path
      local_var_path = '/items/{id}/capture_payment'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'SingleItem'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth', 'oAuth2ClientCredentials']

      new_options = opts.merge(
        :operation => :"ItemActionsApi.capture_payment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ItemActionsApi#capture_payment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Make Payment
    # Make a payment for an **Item**. Pass the `:account_id` of a **Bank Account** or a **Card Account** associated with the **Item’s** buyer. The **Item** state will transition to one of `payment_held`, `payment_pending` or `completed` for an **Express** or **Approve** payment type. 
    # @param id [String] Marketplace / Platform item ID
    # @param account_id_request_body [AccountIdRequestBody] 
    # @param [Hash] opts the optional parameters
    # @return [SingleItem]
    def make_payment(id, account_id_request_body, opts = {})
      data, _status_code, _headers = make_payment_with_http_info(id, account_id_request_body, opts)
      data
    end

    # Make Payment
    # Make a payment for an **Item**. Pass the &#x60;:account_id&#x60; of a **Bank Account** or a **Card Account** associated with the **Item’s** buyer. The **Item** state will transition to one of &#x60;payment_held&#x60;, &#x60;payment_pending&#x60; or &#x60;completed&#x60; for an **Express** or **Approve** payment type. 
    # @param id [String] Marketplace / Platform item ID
    # @param account_id_request_body [AccountIdRequestBody] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SingleItem, Integer, Hash)>] SingleItem data, response status code and response headers
    def make_payment_with_http_info(id, account_id_request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ItemActionsApi.make_payment ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ItemActionsApi.make_payment"
      end
      # verify the required parameter 'account_id_request_body' is set
      if @api_client.config.client_side_validation && account_id_request_body.nil?
        fail ArgumentError, "Missing the required parameter 'account_id_request_body' when calling ItemActionsApi.make_payment"
      end
      # resource path
      local_var_path = '/items/{id}/make_payment'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(account_id_request_body)

      # return_type
      return_type = opts[:debug_return_type] || 'SingleItem'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth', 'oAuth2ClientCredentials']

      new_options = opts.merge(
        :operation => :"ItemActionsApi.make_payment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ItemActionsApi#make_payment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Refund
    # Refund an **Item**’s funds. A partial `amount` can be specified otherwise the full amount will be refunded. This will transition the **Item** state to ‘refunded’ if the full amount is refunded, or to the previously held state if a partial `amount` is specified.
    # @param id [String] Marketplace / Platform item ID to be refunded
    # @param refund_request_body [RefundRequestBody] 
    # @param [Hash] opts the optional parameters
    # @return [SingleItem]
    def refund(id, refund_request_body, opts = {})
      data, _status_code, _headers = refund_with_http_info(id, refund_request_body, opts)
      data
    end

    # Refund
    # Refund an **Item**’s funds. A partial &#x60;amount&#x60; can be specified otherwise the full amount will be refunded. This will transition the **Item** state to ‘refunded’ if the full amount is refunded, or to the previously held state if a partial &#x60;amount&#x60; is specified.
    # @param id [String] Marketplace / Platform item ID to be refunded
    # @param refund_request_body [RefundRequestBody] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SingleItem, Integer, Hash)>] SingleItem data, response status code and response headers
    def refund_with_http_info(id, refund_request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ItemActionsApi.refund ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ItemActionsApi.refund"
      end
      # verify the required parameter 'refund_request_body' is set
      if @api_client.config.client_side_validation && refund_request_body.nil?
        fail ArgumentError, "Missing the required parameter 'refund_request_body' when calling ItemActionsApi.refund"
      end
      # resource path
      local_var_path = '/items/{id}/refund'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(refund_request_body)

      # return_type
      return_type = opts[:debug_return_type] || 'SingleItem'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth', 'oAuth2ClientCredentials']

      new_options = opts.merge(
        :operation => :"ItemActionsApi.refund",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ItemActionsApi#refund\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Release Payment (Deprecated - Do Not Use)
    # Included for legacy purposes for existing customers that use Escrow payments which are no longer supported for new flows/customers. Release funds held in escrow from an **Item** with an **Escrow** or **Escrow Partial Release** payment type.  This will transition the **Item** state to `completed`.
    # @param id [String] Marketplace / Platform item ID
    # @param release_payment_request_body [ReleasePaymentRequestBody] 
    # @param [Hash] opts the optional parameters
    # @return [SingleItem]
    def release_payment(id, release_payment_request_body, opts = {})
      data, _status_code, _headers = release_payment_with_http_info(id, release_payment_request_body, opts)
      data
    end

    # Release Payment (Deprecated - Do Not Use)
    # Included for legacy purposes for existing customers that use Escrow payments which are no longer supported for new flows/customers. Release funds held in escrow from an **Item** with an **Escrow** or **Escrow Partial Release** payment type.  This will transition the **Item** state to &#x60;completed&#x60;.
    # @param id [String] Marketplace / Platform item ID
    # @param release_payment_request_body [ReleasePaymentRequestBody] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SingleItem, Integer, Hash)>] SingleItem data, response status code and response headers
    def release_payment_with_http_info(id, release_payment_request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ItemActionsApi.release_payment ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ItemActionsApi.release_payment"
      end
      # verify the required parameter 'release_payment_request_body' is set
      if @api_client.config.client_side_validation && release_payment_request_body.nil?
        fail ArgumentError, "Missing the required parameter 'release_payment_request_body' when calling ItemActionsApi.release_payment"
      end
      # resource path
      local_var_path = '/items/{id}/release_payment'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(release_payment_request_body)

      # return_type
      return_type = opts[:debug_return_type] || 'SingleItem'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth', 'oAuth2ClientCredentials']

      new_options = opts.merge(
        :operation => :"ItemActionsApi.release_payment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ItemActionsApi#release_payment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Void Payment
    # Where pre-authentication is enabled on a platform, voids the `payment_authorized` status for an item. This call is used with the Authorize Payment call. **Note**: Not all payment gateways support the Void Payment API call. In this case, you can wait until a payment authorization expires. A payment authorisation expires after 3 to 6 days if not captured. 
    # @param id [String] Marketplace / Platform item ID
    # @param [Hash] opts the optional parameters
    # @return [SingleItem]
    def void_payment(id, opts = {})
      data, _status_code, _headers = void_payment_with_http_info(id, opts)
      data
    end

    # Void Payment
    # Where pre-authentication is enabled on a platform, voids the &#x60;payment_authorized&#x60; status for an item. This call is used with the Authorize Payment call. **Note**: Not all payment gateways support the Void Payment API call. In this case, you can wait until a payment authorization expires. A payment authorisation expires after 3 to 6 days if not captured. 
    # @param id [String] Marketplace / Platform item ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(SingleItem, Integer, Hash)>] SingleItem data, response status code and response headers
    def void_payment_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ItemActionsApi.void_payment ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ItemActionsApi.void_payment"
      end
      # resource path
      local_var_path = '/items/{id}/void_payment'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'SingleItem'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth', 'oAuth2ClientCredentials']

      new_options = opts.merge(
        :operation => :"ItemActionsApi.void_payment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ItemActionsApi#void_payment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
