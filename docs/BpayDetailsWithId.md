# AssemblyPayments::BpayDetailsWithId

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **bpay_details** | [**BpayDetails**](BpayDetails.md) |  | [optional] |

## Example

```ruby
require 'assembly_payments'

instance = AssemblyPayments::BpayDetailsWithId.new(
  id: 100fd4a0-0538-11e6-b512-3e1d05defe78,
  bpay_details: null
)
```

