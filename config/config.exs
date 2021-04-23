# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :ex_mon_copy,
  ecto_repos: [ExMonCopy.Repo]

# Configures the endpoint
config :ex_mon_copy, ExMonCopyWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "gV/2xE9u9S4Ty5aV3S42u1M2CxPgT+TskmRQbfaaHktS5dnj1CgJxQ7NJDeaS4Ty",
  render_errors: [view: ExMonCopyWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: ExMonCopy.PubSub,
  live_view: [signing_salt: "L9C6IfGv"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
