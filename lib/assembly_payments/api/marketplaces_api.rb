=begin
#Assembly API

#Assembly (formely PromisePay) is a powerful payments engine custom-built for platforms and marketplaces.

The version of the OpenAPI document: 2.0
Contact: support@assemblypayments.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.1

=end

require 'cgi'

module AssemblyPayments
  class MarketplacesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Show Marketplace
    # Show details of your **Platform**, providing access to your configuration and related **User** and **Company**.
    # @param [Hash] opts the optional parameters
    # @return [Marketplace]
    def show_marketplace(opts = {})
      data, _status_code, _headers = show_marketplace_with_http_info(opts)
      data
    end

    # Show Marketplace
    # Show details of your **Platform**, providing access to your configuration and related **User** and **Company**.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Marketplace, Integer, Hash)>] Marketplace data, response status code and response headers
    def show_marketplace_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MarketplacesApi.show_marketplace ...'
      end
      # resource path
      local_var_path = '/marketplace'

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
      return_type = opts[:debug_return_type] || 'Marketplace'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth', 'oAuth2ClientCredentials']

      new_options = opts.merge(
        :operation => :"MarketplacesApi.show_marketplace",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MarketplacesApi#show_marketplace\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
