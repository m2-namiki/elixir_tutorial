defmodule ElixirTutorial.MixProject do
  use Mix.Project

  def project do
    [
      app: :elixir_tutorial,
      version: "0.1.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :dev,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {ElixirTutorial.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:plug, "~> 1.8"},
      {:cowboy, "~> 2.6"},
      {:plug_cowboy, "~> 2.1"},
      {:jason, "~> 1.1"},
      {:dialyxir, "~> 0.5", only: [:dev], runtime: false},
      {:yacto, "~> 1.2"},
      {:simple_schema, "~> 1.1"}
    ]
  end
end
