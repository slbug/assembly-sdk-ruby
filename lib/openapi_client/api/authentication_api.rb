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
  class AuthenticationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Token
    # Exchange client application credentials for a bearer token. Please ensure to call the auth issuing server as described at https://developer.assemblypayments.com/reference#authentication
    # @param tokens_request_body [TokensRequestBody] 
    # @param [Hash] opts the optional parameters
    # @return [TokensResponse]
    def token(tokens_request_body, opts = {})
      data, _status_code, _headers = token_with_http_info(tokens_request_body, opts)
      data
    end

    # Token
    # Exchange client application credentials for a bearer token. Please ensure to call the auth issuing server as described at https://developer.assemblypayments.com/reference#authentication
    # @param tokens_request_body [TokensRequestBody] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(TokensResponse, Integer, Hash)>] TokensResponse data, response status code and response headers
    def token_with_http_info(tokens_request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthenticationApi.token ...'
      end
      # verify the required parameter 'tokens_request_body' is set
      if @api_client.config.client_side_validation && tokens_request_body.nil?
        fail ArgumentError, "Missing the required parameter 'tokens_request_body' when calling AuthenticationApi.token"
      end
      # resource path
      local_var_path = '/tokens'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(tokens_request_body)

      # return_type
      return_type = opts[:debug_return_type] || 'TokensResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth', 'oAuth2ClientCredentials']

      new_options = opts.merge(
        :operation => :"AuthenticationApi.token",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthenticationApi#token\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
