# DiagnostiCSS

Diagnostic CSS stylesheet that helps visually detect any
potentially invalid, inaccessible or erroneous HTML markup.

DiagnostiCSS highlights the following problems:

* inline styles
* invalid links
* empty elements
* elements missing required attributes
* deprecated elements

Sponsored by [Flatstack](http://flatstack.com/).

## Installation

### Rails

Add this line to your application's Gemfile:

```ruby
gem 'diagnosticss', github: 'diagnosticss', group: :development
```

And then execute:

    $ bundle install

### Sinatra

Add diagnosticss middleware into your application:

```ruby
require 'diagnosticss'

class App < Sinatra::Base
  use Diagnosticss::Middleware
  # ...
end
```

## Usage

DiagnostiCSS CSS will be injected into html page if you have 'diagnosticss' gem
in Gemfile.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

### Ideas, TODOs

* build minified version (bookmarket issue)
* cool rgba() colors
* visible alerts (generated `content:`)
* documentation on selectors
* configuration? (ability to disable/enable some of inspections)
