# AssemblyPayments::Status

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |

## Example

```ruby
require 'assembly_payments'

instance = AssemblyPayments::Status.new(
  id: 100fd4a0-0538-11e6-b512-3e1d05defe78,
  status: 22000,
  state: pending
)
```

