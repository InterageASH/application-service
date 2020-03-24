# Interage::Service

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'interage-service', '~> 0.1'
```

And then execute:

```bash
bundle install
```

Or install it yourself as:

```bash
gem install interage-service
```

## Usage

You can use a Rails generator to create `ApplicationService`:

```bash
rails g interage:service:install
```

And you can use a Rails generator to create service classes:


```bash
rails g interage:service:create CustomersByDocument Customer
```

## Contributing

Bug reports and merge services are welcome on GitLab at https://gitlab.com/[USERNAME]/interage-service.
