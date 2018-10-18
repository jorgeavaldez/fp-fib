# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :fib, FibWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "21b3QDS+ez3fzW/yy3R6llEeb1BQtlIM98IyGwx96cSsepdUJwdSKTqr4DBfUg/Z",
  render_errors: [view: FibWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Fib.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
