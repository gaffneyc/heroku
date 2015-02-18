require "heroku/command/base"

module Heroku::Command

  # clone an existing app
  #
  class Fork < Base

    # fork [NEWNAME]
    #
    # Fork an existing app -- copy config vars and Heroku Postgres data, and re-provision add-ons to a new app.
    # New app name should not be an existing app. The new app will be created as part of the forking process.
    #
    # -s, --stack  STACK   # specify a stack for the new app
    # --region REGION      # specify a region
    #
    def index
      ::Heroku::JSPlugin.run('fork', nil, app, args)
    end
  end
end
