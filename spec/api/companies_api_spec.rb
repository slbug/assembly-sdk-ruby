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

# Unit tests for AssemblyPayments::CompaniesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CompaniesApi' do
  before do
    # run before each test
    @api_instance = AssemblyPayments::CompaniesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CompaniesApi' do
    it 'should create an instance of CompaniesApi' do
      expect(@api_instance).to be_instance_of(AssemblyPayments::CompaniesApi)
    end
  end

  # unit tests for create_company
  # Create Company
  # Create a **Company** associated with the **User** using a given &#x60;user_id&#x60;. **Note**: Some parameters are required for user verification. See our guide on [Onboarding a Payout User/Seller](https://developer.assemblypayments.com/docs/onboarding-a-pay-out-user) for more information. 
  # @param company_request_body 
  # @param [Hash] opts the optional parameters
  # @return [SingleCompany]
  describe 'create_company test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_companies
  # List Companies
  # Retrieve an ordered and paginated list of existing **Companies**.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit Number of records to retrieve. Up to 200.
  # @option opts [Integer] :offset Number of records to offset. Required for pagination.
  # @return [SimpleCompanies]
  describe 'list_companies test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for show_company
  # Show Company
  # Show details of a specific **Company** using a given &#x60;:id&#x60;.
  # @param id Company ID
  # @param [Hash] opts the optional parameters
  # @return [SingleCompany]
  describe 'show_company test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_company
  # Update Company
  # Update an existing **Company** attributes using a given &#x60;:id&#x60;.
  # @param id Company ID
  # @param company_request_body 
  # @param [Hash] opts the optional parameters
  # @return [SingleCompany]
  describe 'update_company test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
