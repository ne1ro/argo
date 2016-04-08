defmodule Argo.Mixfile do
  use Mix.Project

  def project do
    [app: :argo,
     version: "0.0.1",
     elixir: "~> 1.0",
     elixirc_paths: elixirc_paths(Mix.env),
     compilers: [:phoenix, :gettext] ++ Mix.compilers,
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     aliases: aliases,
     test_coverage: [tool: Coverex.Task],
     deps: deps]
  end

  # Configuration for the OTP application.
  #
  # Type `mix help compile.app` for more information.
  def application do
    [mod: {Argo, []},
     applications: app_list(Mix.env)]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "web", "test/support"]
  defp elixirc_paths(_),     do: ["lib", "web"]

  # Specifies your project dependencies.
  #
  # Type `mix help deps` for examples and options.
  defp deps do
    [{:phoenix, "~> 1.1.4"},
     {:postgrex, ">= 0.0.0"},
     {:phoenix_ecto, "~> 2.0"},
     {:phoenix_html, "~> 2.4"},
     {:gettext, "~> 0.9"},
     {:cowboy, "~> 1.0"},
     {:guardian, "~> 0.10.0"},
     {:comeonin, "~> 2.1"},
     {:mailman, "~> 0.1.0"},
     {:dotenv, "~> 2.0.0"},
     {:arc, "~> 0.5.1"},
     {:eiconv, github: "zotonic/eiconv"},
     {:phoenix_live_reload, "~> 1.0", only: :dev},
     {:credo, "~> 0.3", only: [:dev, :test]},
     {:hound, "~> 0.8", only: [:dev, :test]},
     {:faker, "~> 0.5", only: :test},
     {:coverex, "~> 1.4.7", only: :test}]
  end

  # Aliases are shortcut or tasks specific to the current project.
  # For example, to create, migrate and run the seeds file at once:
  #
  #     $ mix ecto.setup
  #
  # See the documentation for `Mix` for more info on aliases.
  defp aliases do
    ["ecto.setup": ["ecto.create", "ecto.migrate", "run priv/repo/seeds.exs"],
     "ecto.reset": ["ecto.drop", "ecto.setup"]]
  end

  defp app_list(:dev), do: [:dotenv | app_list]
  defp app_list(_), do: app_list
  defp app_list, do: [:phoenix, :phoenix_html, :cowboy, :logger, :gettext,
                      :phoenix_ecto, :postgrex, :comeonin]
end
