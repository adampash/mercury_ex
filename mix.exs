defmodule Mercury.Mixfile do
  use Mix.Project

  def project do
    [
      app: :mercury,
      version: "0.1.1",
      elixir: "~> 1.3",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps(),
      package: package(),
      description: description(),
    ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger, :httpoison]]
  end

  def package do
    [
      maintainers: ["Adam Pash"],
      name: "mercury",
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/adampash/mercury_ex"},
    ]
  end

  def description do
    """
    A simple wrapper for the Mercury Web Parser API (https://mercury.postlight.com/web-parser/),
    powered by HTTPoison.
    """
  end


  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:httpoison, "~> 0.11.0"},
      {:ex_doc, ">= 0.0.0", only: :dev},
    ]
  end
end
