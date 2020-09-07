# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :nfl_backend, NflBackendWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "1WXxuRKLauecL2HXCdCd3UfZ2IOaw0I+nw8yKxZN7GnNnf5Oe8S20/1bHXoxJj49",
  render_errors: [view: NflBackendWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: NflBackend.PubSub,
  live_view: [signing_salt: "N7aS53Rv"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
