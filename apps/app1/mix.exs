defmodule App1.MixProject do
  use Mix.Project

  def project do
    [
      app: :app1,
      version: "0.1.0",
      build_path: "../../_build",
      config_path: "../../config/config.exs",
      deps_path: "../../deps",
      lockfile: "../../mix.lock",
      elixir: "~> 1.14",
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
  defp deps do
    [
      {:ssl_verify_fun, "~> 1.1.6", manager: :rebar3, only: [:test], runtime: false, override: true}
    ]
  end
end
