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

# Unit tests for OpenapiClient::BankAccountsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'BankAccountsApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::BankAccountsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of BankAccountsApi' do
    it 'should create an instance of BankAccountsApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::BankAccountsApi)
    end
  end

  # unit tests for create_bank_account
  # Create Bank Account
  # Create a **Bank Account** to be used as either a funding source or a Disbursement destination. Store the returned &#x60;:id&#x60; and use it for a &#x60;make_payment&#x60; **Item Action** call. The &#x60;:id&#x60; is also referred to as a &#x60;token&#x60; when involving **Bank Accounts**. 
  # @param bank_account_request_body 
  # @param [Hash] opts the optional parameters
  # @return [BankAccount]
  describe 'create_bank_account test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for redact_bank_account
  # Redact Bank Account
  # Redact a **Bank Account** using a given &#x60;:id&#x60;. Redacted **Bank Accounts** can no longer be used as a funding source or a Disbursement destination. 
  # @param id Bank account ID
  # @param [Hash] opts the optional parameters
  # @return [BankAccountDeletion]
  describe 'redact_bank_account test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for send_penny_amount
  # Send Penny Amount
  # When penny verification is enabled, this API call sends two penny transactions to the specified bank account for verification. **Note**: This API call is not required when your platform has automatic penny verification enabled, as this is instead done by the system. Penny credit verification is only supported for US platforms. 
  # @param id Bank account ID
  # @param [Hash] opts the optional parameters
  # @return [BankAccount]
  describe 'send_penny_amount test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for show_bank_account
  # Show Bank Account
  # Show details of a specific **Bank Account** using a given &#x60;:id&#x60;.
  # @param id Bank account ID
  # @param [Hash] opts the optional parameters
  # @return [BankAccount]
  describe 'show_bank_account test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for show_bank_account_user
  # Show Bank Account User
  # Show the **User** the **Bank Account** is associated with using a given &#x60;:id&#x60;.
  # @param id Bank account ID
  # @param [Hash] opts the optional parameters
  # @return [SingleUser]
  describe 'show_bank_account_user test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for validate_routing_number
  # Validate Routing Number
  # Validate a US bank routing number before creating an account. This can be used to provide on-demand verification, and further information of the bank information a User is providing.
  # @param routing_number Bank account routing number
  # @param [Hash] opts the optional parameters
  # @return [SingleRoutingNumber]
  describe 'validate_routing_number test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for verify_penny_amount
  # Verify Penny Amount
  # When penny verification is enabled, this API call verifies the two penny transactions that were sent to a specified bank account using **Send Penny Amount**. **Note**: This API call requires you to provide a front-end interface to your end-users into which they can input the penny amounts required for a successful verification. Your front-end interface should then pass the information into this API call. Penny credit verification is only supported for US platforms. 
  # @param id Bank account ID
  # @param penny_verify_request_body 
  # @param [Hash] opts the optional parameters
  # @return [BankAccount]
  describe 'verify_penny_amount test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end