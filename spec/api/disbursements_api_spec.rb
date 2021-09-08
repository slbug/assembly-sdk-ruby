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

# Unit tests for AssemblyPayments::DisbursementsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'DisbursementsApi' do
  before do
    # run before each test
    @api_instance = AssemblyPayments::DisbursementsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DisbursementsApi' do
    it 'should create an instance of DisbursementsApi' do
      expect(@api_instance).to be_instance_of(AssemblyPayments::DisbursementsApi)
    end
  end

  # unit tests for list_disbursement
  # List Disbursements
  # Retrieve an ordered and paginated list of existing **Disbursements**. The list can be filtered by **Batch ID**. 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit Number of records to retrieve. Up to 200.
  # @option opts [Integer] :offset Number of records to offset. Required for pagination.
  # @option opts [String] :batch_id Batch ID.
  # @return [Disbursements]
  describe 'list_disbursement test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for show_disbursement
  # Show Disbursement
  # Get a disbursment using its ID
  # @param id Disbursement ID
  # @param [Hash] opts the optional parameters
  # @return [SingleDisbursement]
  describe 'show_disbursement test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for show_disbursement_bank_accounts
  # Show Disbursement Bank Accounts
  # Get all the bank accounts relating to disbursement ID
  # @param id Disbursement ID
  # @param [Hash] opts the optional parameters
  # @return [BankAccount]
  describe 'show_disbursement_bank_accounts test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for show_disbursement_items
  # Show Disbursement Items
  # Get all the items relating to a disbursement ID
  # @param id Disbursement ID
  # @param [Hash] opts the optional parameters
  # @return [Items]
  describe 'show_disbursement_items test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for show_disbursement_transactions
  # Show Disbursement Transactions
  # Get all the transactions relating to a disbursment ID
  # @param id Disbursement ID
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit Number of records to retrieve. Up to 200.
  # @option opts [Integer] :offset Number of records to offset. Required for pagination.
  # @return [Transactions]
  describe 'show_disbursement_transactions test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for show_disbursement_users
  # Show Disbursement Users
  # Get all the users relating to disbursement ID
  # @param id Disbursement ID
  # @param [Hash] opts the optional parameters
  # @return [SingleUser]
  describe 'show_disbursement_users test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for show_disbursement_wallet_accounts
  # Show Disbursement Wallet Accounts
  # Get all the wallet accounts relating to a disbursment ID
  # @param id Disbursement ID
  # @param [Hash] opts the optional parameters
  # @return [WalletAccount]
  describe 'show_disbursement_wallet_accounts test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
