# Diagnosticss

Diagnostic CSS stylesheet that helps visually detect any
potentially invalid, inaccessible or erroneous HTML markup.

Diagnosticss highlights the following problems:

* inline styles
* invalid links
* empty elements
* elements missing required attributes
* deprecated elements

## Installation

### Rails

Add this line to your application's Gemfile:

    gem 'diagnosticss', :group => :development

And then execute:

    $ bundle install

## Usage

Diagnosticss CSS will be injected into html page if you have 'diagnosticss' gem
in Gemfile.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

### Ideas, TODOs

* usage examples (rails, sinatra)
* bookmarklet
* configuration? (ability to disable/enable some of inspections)
* documentation on selectors
