# Begetter [![Build Status](https://travis-ci.org/jzahnd/begetter.svg?branch=master)](https://travis-ci.org/jzahnd/begetter)

Begetter is a teeny tiny little gem that creates a class constant from a string based name. It is inspired by ActiveSupport's `constantize` but with-out the ActiveSupport girth.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'begetter'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install begetter

## Usage
Require Begetter:
```ruby
require 'begetter'
```

Call `Begetter.get` with the name of the class you wish to reference:
```ruby
class FooBar; end

klass_name = 'FooBar'
klass = Begetter.get(klass_name)

foo_bar = klass.new
#=> FooBar
```

Classes with-in modules work as well:
```ruby
module Foo
  class Bar; end
end

klass_name = 'Foo::Bar'
klass = Begetter.get(klass_name)

bar = klass.new
#=> Foo::Bar
```

That's it!

## Why?

Do we really need an entire gem to do this? After no less than 3 projects that had heavily dynamic architecture, I found myself building this functionality as a module into each one. There have to to be others who will find this moderately useful.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/jzahnd/begetter.

