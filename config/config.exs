import Config

if config_env() == :test do
  config :account_component, Postgrex,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "message_store"
end
