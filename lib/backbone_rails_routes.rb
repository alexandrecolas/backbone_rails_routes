require "backbone_rails_routes/version"
require "backbone_rails_routes/routes"

module BackboneRailsRoutes

  def self.all
    return BackboneRailsRoutes::Routes.backbone.to_json
  end

end
