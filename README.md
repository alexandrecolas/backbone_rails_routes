# BackboneRailsRoutes

Use Rails routes directly in a Backbone App.

## Installation

Add this line to your application's Gemfile:

    gem 'backbone_rails_routes', git: 'git@github.com:alexandrecolas/backbone_rails_routes.git'

And then execute:

    $ bundle install

## Usage

Add backbone.rails_routes in application.js

```javascript
//= require underscore
//= require backbone
//= require backbone.rails_routes

```

Next use Backbone.RailsRoutes in `Backbone.Model` or `Backbone.Router`

```coffeescript
class App.Models.Game extends Backbone.Model
  urlRoot: Backbone.RailsRoutes.get("games") # return "/games"
```

## Contributing

1. Fork it ( http://github.com/<my-github-username>/backbone_rails_routes/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
