=begin
#Assembly API

#Assembly (formely PromisePay) is a powerful payments engine custom-built for platforms and marketplaces.

The version of the OpenAPI document: 2.0
Contact: support@assemblypayments.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.1

=end

require 'spec_helper'
require 'json'

# Unit tests for OpenapiClient::CallbacksApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CallbacksApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::CallbacksApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CallbacksApi' do
    it 'should create an instance of CallbacksApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::CallbacksApi)
    end
  end

  # unit tests for create_callback
  # Create Callback
  # Create a **Callback** to notify you at the &#x60;URL&#x60; when the &#x60;object_type&#x60; changes
  # @param callback_request_body 
  # @param [Hash] opts the optional parameters
  # @return [SingleCallback]
  describe 'create_callback test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_callback
  # Delete Callback
  # Delete an existing Callback using a given &#x60;:id&#x60;.
  # @param id Callback ID
  # @param [Hash] opts the optional parameters
  # @return [CallbackDeletion]
  describe 'delete_callback test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_callback_response
  # List Callback Responses
  # Retrieve an ordered and paginated list of the responses garnered from a callback using a given &#x60;:id&#x60;.
  # @param id Callback ID
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit Number of records to retrieve. Up to 200.
  # @option opts [Integer] :offset Number of records to offset. Required for pagination.
  # @return [ListCallbackResponses]
  describe 'list_callback_response test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_callbacks
  # List Callbacks
  # Retrieve an ordered and paginated list of all created **Callbacks**.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit Number of records to retrieve. Up to 200.
  # @option opts [Integer] :offset Number of records to offset. Required for pagination.
  # @option opts [String] :filter Narrow down records to relevant character string
  # @return [Callbacks]
  describe 'list_callbacks test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for show_callback
  # Show Callback
  # Show details of a specific **Callback** using a given &#x60;:id&#x60;.
  # @param id Callback ID
  # @param [Hash] opts the optional parameters
  # @return [SingleCallback]
  describe 'show_callback test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for show_callback_response
  # Show Callback Response
  # Show details of a specific **Callback** response using a given &#x60;:id&#x60;.
  # @param callback_id Callback ID
  # @param id Callback response ID
  # @param [Hash] opts the optional parameters
  # @return [SingleCallbackResponse]
  describe 'show_callback_response test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_callback
  # Update Callback
  # Update an existing **Callback** using a given &#x60;:id&#x60;. You can change the &#x60;URL&#x60;, the &#x60;object_type&#x60; and whether the **Callback** is &#x60;enabled&#x60; or &#x60;disabled&#x60;. 
  # @param id Callback ID
  # @param callback_request_body 
  # @param [Hash] opts the optional parameters
  # @return [SingleCallback]
  describe 'update_callback test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
