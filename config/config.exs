# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phoolkit,
  ecto_repos: [Phoolkit.Repo]

# Configures the endpoint
config :phoolkit, PhoolkitWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "1L9ShNAa0Tj0G8hStatGI463gqH9VAjmR/FTrCmiMcbt+AdOzpq9XYw83jS7kGiP",
  render_errors: [view: PhoolkitWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Phoolkit.PubSub,
  live_view: [signing_salt: "s05MZAYG"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
