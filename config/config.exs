# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :admin2,
  ecto_repos: [Admin2.Repo]

# Configures the endpoint
config :admin2, Admin2.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "4wZY7s/pw1xk3c/JcbIV1pAw3hByzQr6uYwMqjT+h8rm88odtZtvKNl7hEttml2H",
  render_errors: [view: Admin2.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Admin2.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

