defmodule AccountComponent.MixProject do
  use Mix.Project

  def project do
    [
      app: :account_component,
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  def deps do
    [
      {:message_db, "~> 0.0", github: "elixir-verity/ex-message-db"}
    ]
  end
end
