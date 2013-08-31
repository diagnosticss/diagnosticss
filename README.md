# DiagnostiCSS

Diagnostic CSS stylesheet that helps visually detect any
potentially invalid, inaccessible or erroneous HTML markup.

DiagnostiCSS highlights the following problems:

* inline styles and event attributes
* invalid links
* empty or deprecated elements
* elements missing required attributes

Sponsored by [Flatstack](http://flatstack.com/).

## Installation & Usage

### Rails

Add this line to your application's Gemfile:

```ruby
gem 'diagnosticss', github: 'diagnosticss', group: :development
```

And run:

    $ bundle install

### Sinatra

Add 'diagnosticss' to your application's Gemfile as described above
and then use DiagnostiCSS middleware in your application:

```ruby
require 'diagnosticss'

class App < Sinatra::Base
  use Diagnosticss::Middleware
  # ...
end
```

### HTML

Include a stylesheet link to the diagnostic css:

```html
<link rel="stylesheet" href="//diagnosticss.github.io/css/diagnosticss.css" media="all">
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Don't forget to run `rake compile` (see also `rake -T`) after making any changes to stylesheet
6. Create new Pull Request

### Ideas, TODOs

* configuration? (ability to disable/enable some of inspections)
