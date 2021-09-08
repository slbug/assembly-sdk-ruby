# AssemblyPayments::CardAccountCardAccountsLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_self** | **String** |  | [optional] |
| **users** | **String** |  | [optional] |

## Example

```ruby
require 'assembly_payments'

instance = AssemblyPayments::CardAccountCardAccountsLinks.new(
  _self: /users/buyer-71439598/card_accounts,
  users: /card_accounts/35977230-7168-0138-0a1d-0a58a9feac07/users
)
```

