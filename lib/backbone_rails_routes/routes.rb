class BackboneRailsRoutes::Routes

  def self.backbone
    routes = rails.each_with_object({}) do |route, result|
      result[route[:name]] = route[:path].gsub("(.:format)", "")
    end
  end

  def self.rails
    begin
      require 'rails/application/route_inspector'
      inspector = Rails::Application::RouteInspector.new
    rescue LoadError
      require 'action_dispatch/routing/inspector'
      inspector = ActionDispatch::Routing::RoutesInspector.new([])
    end

    Rails.application.reload_routes!
    routes = Rails.application.routes.routes

    return inspector.send(:collect_routes, routes)
  end

end
