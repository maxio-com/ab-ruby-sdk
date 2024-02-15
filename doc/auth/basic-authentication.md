
# Basic Authentication



Documentation for accessing and setting credentials for BasicAuth.

## Auth Credentials

| Name | Type | Description | Getter |
|  --- | --- | --- | --- |
| BasicAuthUserName | `String` | The username to use with basic authentication | `username` |
| BasicAuthPassword | `String` | The password to use with basic authentication | `password` |



**Note:** Auth credentials can be set using named parameter for any of the above credentials (e.g. `basic_auth_user_name`) in the client initialization.

## Usage Example

### Client Initialization

You must provide credentials in the client as shown in the following code snippet.

```ruby
client = AdvancedBilling::Client.new(
  basic_auth_credentials: BasicAuthCredentials.new(
    username: 'BasicAuthUserName',
    password: 'BasicAuthPassword'
  )
)
```


