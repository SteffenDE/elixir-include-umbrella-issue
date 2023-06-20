defmodule IncludedAppOne.MixProject do
  use Mix.Project

  def project do
    [
      app: :included_app_one,
      version: "0.1.0",
      build_path: "../../_build",
      config_path: "../../config/config.exs",
      deps_path: "../../deps",
      lockfile: "../../mix.lock",
      elixir: "~> 1.15",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {IncludedAppOne.Application, []},
      included_applications: [:geolix]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:geolix, "~> 2.0", runtime: false},
      {:geolix_adapter_mmdb2, "~> 0.6.0", runtime: false}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
      # {:sibling_app_in_umbrella, in_umbrella: true}
    ]
  end
end
