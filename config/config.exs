# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phoenixapp,
  ecto_repos: [Phoenixapp.Repo]

# Configures the endpoint
config :phoenixapp, PhoenixappWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Ux81JTJrbvwAQNl+7APfMfcTI9iHUpK1zldOfgnLvs2VcslKfPrNnhG2+QnFd+tg",
  render_errors: [view: PhoenixappWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Phoenixapp.PubSub,
  live_view: [signing_salt: "tUQPCZto"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :phoenixapp, :pow,
  user: Phoenixapp.Users.User,
  repo: Phoenixapp.Repo

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
