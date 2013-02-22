module Diagnosticss
  class Railtie < Rails::Railtie
    initializer "diagnosticss.insert_middleware" do |app|
      app.config.middleware.use 'Diagnosticss::Middleware'
    end
  end
end
