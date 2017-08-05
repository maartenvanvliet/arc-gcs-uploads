# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :app,
  ecto_repos: [App.Repo]

# Configures the endpoint
config :app, AppWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "11RiQxe2oZiIe9y9lWvreYTXuZixG/m7Ty6NM19NhHJVaCHdEvv0MzPcV+0tifq3",
  render_errors: [view: AppWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: App.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :arc,
  storage: Arc.Storage.GCS,
  bucket: "name-of-bucket"

config :goth,
  json: "path/to/keyfile.json" |> Path.expand |> File.read!

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
