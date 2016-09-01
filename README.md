# Constellation

A Ruby Gem to get constellation from birthday, which supports Chinese and English currently.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'constellation'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install constellation

## Usage

You can pass a birthday with type of Date or String, and you will get the corresponding constellation.

The constellation returned by default is Chinese, and you can get  an English result by passing the second parameter with "en" or :en.

```ruby
require 'constellation'

Constellation.constellation "20001010"
# => "天秤座"

Constellation.constellation "20001010", :cn
# => "天秤座"

Constellation.constellation "20001010", :en
# => "Libra"

Constellation.constellation "20001010", 'en'
# => "Libra"
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/constellation. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

