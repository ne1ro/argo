use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :argo, Argo.Endpoint,
  http: [port: 4001],
  server: true

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :argo, Argo.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "neiro",
  password: "",
  database: "argo_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# Reduce number of encryption rounds
config :comeonin, :bcrypt_log_rounds, 4
config :comeonin, :pbkdf2_rounds, 1
