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
        @response = Rack::Response.new(body, 200, 'Content-Type' => 'text/css')
      else
        status, headers, body = @app.call(env)
        @response = Rack::Response.new(body, status, headers)

        inject_css if html_request?
      end

      @response.to_a
    end

    private

    def html_request?
      content_type, charset = @response.content_type.split(";")
      MIME_TYPES.include?(content_type)
    end

    def diagnosticss_stylesheet_request?
      @request.path_info == CSS_PATH
    end

    def inject_css
      full_body = @response.body.join
      full_body.sub! /<\/head>/, css + '</head>'

      @response["Content-Length"] = full_body.bytesize.to_s

      # Ensure that browser does
      @response["Etag"] = ""
      @response["Cache-Control"] = "no-cache"

      @response.body = [full_body]
    end

    def css
      %{<link href="#{CSS_PATH}" media="all" rel="stylesheet" />\n}
    end
  end
end
