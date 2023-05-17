import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :shop_backend, ShopBackend.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "shop_backend_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :shop_backend, ShopBackendWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "+QOcLklBuu7r8y0tZk2MOE7TChHV3Uaaj7giJ9nuH6kV1NHZzzMoLEocF3svLfZd",
  server: false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
