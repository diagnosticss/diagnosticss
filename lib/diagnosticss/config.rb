module Diagnosticss
  # config = Config.new("~/.diagnosticss")
  # config.links? # => true
  # config.forms? # => false
  class Config
    OPTIONS = %w[
      inline_styles
      links
      empty_elements
      images
      forms
      deprecated
      print
    ]

    OPTIONS.each do |option|
      define_method(option + "?") { ! disabled?(option) }
    end

    def initialize(filename)
      init_from_file(filename)
    end

    private

    def init_from_file(filename)
      @config = File.read(filename)
        .split("\n")
        .map(&:strip)
        .reject(&:empty?)
    end

    def disabled?(option)
      @config.include?("no_#{option}")
    end
  end
end
