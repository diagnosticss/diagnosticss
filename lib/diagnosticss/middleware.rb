module Diagnosticss
  class Middleware
    MIME_TYPES = ['text/html', 'application/xhtml+xml']
    CSS_PATH = '/diagnosticss.css'

    def initialize(app)
      @app = app
    end

    def call(env)
      @request = Rack::Request.new(env)

      if diagnosticss_stylesheet_request?
        body = File.read(File.dirname(__FILE__) + CSS_PATH)
        @response = Rack::Response.new(body, 200, {})
      else
        status, headers, body = @app.call(env)
        @response = Rack::Response.new(body, status, headers)

        inject_css if response_okay_to_modify?
      end

      return @response.to_a
    end

    private

    def response_okay_to_modify?
      content_type, charset = @response.content_type.split(";")
      diagnosticss = @request.params['diagnosticss']
      @response.ok? && MIME_TYPES.include?(content_type) && diagnosticss
    end

    def diagnosticss_stylesheet_request?
      @request.path_info == CSS_PATH
    end

    def inject_css
      full_body = @response.body.join
      full_body.sub! /<\/body>/, css + '</body>'

      @response["Content-Length"] = full_body.bytesize.to_s

      # Ensure that browser does
      @response["Etag"] = ""
      @response["Cache-Control"] = "no-cache"

      @response.body = [full_body]
    end

    def css
      %{<link href="#{CSS_PATH}" media="screen" rel="stylesheet" type="text/css" />\n}
    end
  end
end
