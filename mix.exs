defmodule Exsoda.Mixfile do
  use Mix.Project

  def project do
    [app: :exsoda,
     version: "1.2.3",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps,
     package: package(),
     description: """
      A Socrata Soda2 API wrapper
     """
   ]
  end

  defp package do
    [
      licenses: ["MIT"],
      maintainers: ["Chris Duranti"],
      links: %{github: "https://github.com/rozap/exsoda"}
    ]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:logger, :httpoison, :poison]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    [
      {:httpoison, "~> 0.9.2"},
      {:poison, "~> 2.2.0"},
      {:nimble_csv, "~> 0.1.0"},
      {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end
end
