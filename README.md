# SvgUse [![Build](https://github.com/frullah/svg_use/actions/workflows/main.yml/badge.svg)](https://github.com/frullah/svg_use/actions/workflows/main.yml)

svg_use is a helper for render svg [use](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/use) tag from inline SVG sprite

Tested with Ruby version 2.6 to 3.0 and Rails version 5.2 to 7.0

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'svg_use'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install svg_use

## Helper method

```ruby
svg_use(name:, classes: nil, style: nil)
```

where the name is the _id_ attribute of [_symbol_](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/symbol) tag

for example
```ruby
svg_use(name: "icon-x", classes: "another-class", style: "fill: #000")
```
will render
```html
<svg class="icon another-class" style="fill: #000">
    <use href="#icon-x"></use>
</svg>
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome.
