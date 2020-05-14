use Mix.Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :phoenixapp, Phoenixapp.Repo,
  username: "rootuser",
  password: "rootpass",
  database: "phoenixapp_test#{System.get_env("MIX_TEST_PARTITION")}",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox,
  port: "5638"
  if System.get_env("GITHUB_ACTIONS") do
    config :phoenixapp, Phoenixapp.Repo,
      username: "postgres",
      password: "postgres",
      port: "5432"
  end

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :phoenixapp, PhoenixappWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
