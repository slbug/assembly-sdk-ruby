# AssemblyPayments::ItemRelated

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **buyers** | **String** |  | [optional] |
| **sellers** | **String** |  | [optional] |

## Example

```ruby
require 'assembly_payments'

instance = AssemblyPayments::ItemRelated.new(
  buyers: 064d6800-fff3-11e5-86aa-5e5517507c66,
  sellers: 5830def0-ffe8-11e5-86aa-5e5517507c66
)
```

