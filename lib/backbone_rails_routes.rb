require "backbone_rails_routes/version"
require "backbone_rails_routes/routes"

module BackboneRailsRoutes

  module Rails
    class Engine < ::Rails::Engine
    end
  end

  def self.all
    return BackboneRailsRoutes::Routes.backbone.to_json
  end

end
