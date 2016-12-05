# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phoenix_webpack_example,
  ecto_repos: [PhoenixWebpackExample.Repo]

# Configures the endpoint
config :phoenix_webpack_example, PhoenixWebpackExample.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "NzINutfU42a9OQfihSJtP6wHM0RXnq8xhc7Rx5Qh5X1gJ2CZq/n8AhXK7F9xZh/T",
  render_errors: [view: PhoenixWebpackExample.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhoenixWebpackExample.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
