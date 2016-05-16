# Unicode Country Flags

No image, no CSS, you can show country flags on your web pages with unicode only.
See [Regional Indicator Symbol](https://en.wikipedia.org/wiki/Regional_Indicator_Symbol) for details.
And find valid country codes here, [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'unicode_country_flags'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install unicode_country_flags

## Usage

Get the raw code:

```ruby
UnicodeCountryFlags.flag_of('cn')  #=> "&#127464;&#127475;"
```

Or use the helper, `unicode_country_flag_of`, in view code:

```ruby
<ul>
  <% %w{ us gb au cn jp }.each do |code| -%>
    <li><%= unicode_country_flag_of(code) %> <%= code.upcase %></li>
  <% end %>
</ul>
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/YanhaoYang/unicode_country_flags.

