defmodule Authority.Ecto.MixProject do
  use Mix.Project

  def project do
    [
      app: :authority_ecto,
      version: "0.1.0",
      elixir: "~> 1.5",
      elixirc_paths: elixirc_paths(Mix.env()),
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

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_env), do: ["lib"]

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:authority, ">= 0.0.0"},
      {:ecto, ">= 0.0.0"},
      {:ex_doc, ">= 0.0.0", only: [:dev, :test]}
    ]
  end
end
