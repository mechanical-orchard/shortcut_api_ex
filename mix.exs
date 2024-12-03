defmodule ShortcutApiEx.MixProject do
  use Mix.Project

  @source_url "https://github.com/mechanical-orchard/shortcut_api_ex"

  def project do
    [
      app: :shortcut_api_ex,
      version: "1.0.3",
      elixir: "~> 1.16",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      docs: &docs/0,
      description: "Elixir client for the Shortcut API",
      package: package(),
      source_url: @source_url
    ]
  end

  defp docs do
    [
      name: "Shortcut API Ex",
      source_url: @source_url,
      homepage_url: @source_url,
      main: "readme",
      extras: [
        "README.md": [title: "Read Me"],
        "man/basics/getting-started.md": [filename: "basics-getting-started"]
      ],
      groups_for_modules: [
        API: [
          ShortcutApiEx.Epics,
          ShortcutApiEx.Stories,
          ShortcutApiEx.Projects
        ]
      ]
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
      {:bypass, "~> 2.1", only: :test},
      {:credo, "~> 1.7", only: [:dev, :test], runtime: false},
      {:ex_doc, "~> 0.34", only: :dev, runtime: false},
      {:hammox, "~> 0.7", only: :test},
      {:jason, "~> 1.4"},
      {:plug_cowboy, "~> 2.5", only: :test},
      {:req, "~> 0.5.0"}
    ]
  end

  defp package do
    [
      name: "shortcut_api_ex",
      licenses: ["MIT"],
      links: %{
        "GitHub" => @source_url,
        "Shortcut API Docs" => "https://developer.shortcut.com/api/rest/v3"
      }
    ]
  end
end
