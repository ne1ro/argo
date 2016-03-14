# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :argo, Argo.Endpoint,
  url: [host: "localhost"],
  root: Path.dirname(__DIR__),
  secret_key_base: "3f9vSrDca1SFLHzvLS24s9sTfjRK0E8p7pYjn6d+tZYl7TUs6290kOWqq1Dc6Yzw",
  render_errors: [accepts: ~w(html json)],
  pubsub: [name: Argo.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

# Configure phoenix generators
config :phoenix, :generators,
  migration: true,
  binary_id: false

# Configure guardian
config :guardian, Guardian,
  allowed_algos: ["HS512"], # optional
  issuer: "Argo",
  ttl: { 30, :days },
  verify_issuer: true, # optional
  secret_key: "example",
  serializer: Argo.GuardianSerializer

# Browser testing
config :hound, driver: "phantomjs"
