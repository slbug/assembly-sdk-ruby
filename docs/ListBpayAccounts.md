# AssemblyPayments::ListBpayAccounts

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bpay_accounts** | [**Array&lt;ListBpayAccountsBpayAccounts&gt;**](ListBpayAccountsBpayAccounts.md) |  | [optional] |
| **links** | [**AddressAddressesLinks**](AddressAddressesLinks.md) |  | [optional] |
| **meta** | [**ListBpayAccountsMeta**](ListBpayAccountsMeta.md) |  | [optional] |

## Example

```ruby
require 'assembly_payments'

instance = AssemblyPayments::ListBpayAccounts.new(
  bpay_accounts: null,
  links: null,
  meta: null
)
```

