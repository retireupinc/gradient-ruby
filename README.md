# GradientRuby

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'gradient_ruby'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install gradient_ruby

## Usage

### API

Create a new client

```ruby
client = GradientRuby::Client.new(access_token: token)
```

#### Contacts

##### Search contacts by name

```ruby
  contacts = client.search_contacts('Jerry')
```

Returns `Array[GradientRuby::Models::Contact]`

##### Get all contacts

```ruby
  contacts = client.contacts
```

Returns `Array[GradientRuby::Models::Contact]`

##### Find contact by id

```ruby
  contact = client.contact('1234')
```

Returns `GradientRuby::Models::Contact`

##### Create contact

```ruby
  contact = client.create_contact(contact_params)
```

Returns `GradientRuby::Models::Contact`

##### Update contact

```ruby
  contact = client.update_contact(contact_id, contact_params)
```

Returns `GradientRuby::Models::Contact`

##### Upload document

```ruby
  contact = client.upload_document(contact_id, contact_params)
```

Returns `GradientRuby::Models::Contact`


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/retireupinc/gradient-ruby.
