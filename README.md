# GemPaths

GemPaths can display the paths to the gems Bundler has/will install. It can display the paths in different formats (currently GNU Make, YAML and JSON format) and optionally display a warning if one or more of the gems have not yet been installed.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'gem_paths'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install gem_paths

## Usage

To display a help text, do:

    $ gempaths

To display the path for each installed gem, do:

    $ gempaths list

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run :

    $ bundle exec rspec
    $ bundle exec cucumber features

to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install your local copy of this gem onto your local machine, run `bundle exec rake install`.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ic-factory/gem_paths
