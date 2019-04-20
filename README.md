# Interage::Request

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'interage-request', '~> 0.1'
```

And then execute:

```bash
bundle install
```

Or install it yourself as:

```bash
gem install interage-request
```

## Usage

You can use a Rails generator to create `ApplicationRequest`:

```bash
rails g interage:request:install
```

And you can use a Rails generator to create request classes:


```bash
rails g interage:request:create CustomersByDocument Customer
```

## Contributing

Bug reports and merge requests are welcome on GitLab at https://gitlab.com/[USERNAME]/interage-request.
