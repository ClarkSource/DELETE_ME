module ComfortableMexicanLoveseat
  class Engine < ::Rails::Engine
    initializer "redirect trailing slash urls" do |app|
      app.middleware.insert_before(Rack::Runtime, Rack::Rewrite) do
        r301 %r{^/(.*)/$}, '/$1'
      app.config.assets.precompile += %w( devise.css )
      end
    end
  end
end
