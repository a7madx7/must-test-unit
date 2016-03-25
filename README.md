# require 'must'

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/must/test/unit`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'must-test-unit'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install must-test-unit

## Usage

first you'll have to require 'must'
Just use this method as you would use any other Test::Unit::TestCase method
Example:
must 'return not found if user is not found' do
    assert_equal('not found', Spaceship.new.captain)
end

must 'do something' => Evaluates to: test_do_something

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/a7madx7/must-test-unit.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
