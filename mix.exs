defmodule ColorNamed.MixProject do
  use Mix.Project

  @version "0.1.0"
  @url "https://github.com/RobertDober/color_named"

  @deps [
    # {:credo, "~> 0.10", only: [:dev, :test]},
    {:dialyxir, "~> 1.0", only: [:dev, :test], runtime: false},
    {:extractly, "~> 0.2", only: [:dev, :test], runtime: false},
    {:excoveralls, "~> 0.13.3", only: [:test]},
  ]

  @description """
  Just give names to color colors
  """

  def project do
    [
      app: :color_named,
      version: @version,
      elixir: "~> 1.11",
      elixirc_paths: elixirc_paths(Mix.env()),
      deps: @deps,
      description: @description,
      package: package(),
      preferred_cli_env: [
        coveralls: :test,
        "coveralls.detail": :test,
        "coveralls.post": :test,
        "coveralls.html": :test
      ],
      test_coverage: [tool: ExCoveralls],
      aliases: [docs: &build_docs/1],
      start_permanent: Mix.env() == :prod,
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp package do
    [
      files: [
        "lib",
        "mix.exs",
        "README.md"
      ],
      maintainers: [
        "Robert Dober <robert.dober@gmail.com>"
      ],
      licenses: [
        "Apache 2 (see the file LICENSE for details)"
      ],
      links: %{
        "GitHub" => "https://github.com/robertdober/color_named"
      }
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  @prerequisites """
  run `mix escript.install hex ex_doc` and adjust `PATH` accordingly
  """
  @modulename "ColorNamed"
  defp build_docs(_) do
    Mix.Task.run("compile")
    ex_doc = Path.join(Mix.path_for(:escripts), "ex_doc")
    Mix.shell.info("Using escript: #{ex_doc} to build the docs")

    unless File.exists?(ex_doc) do
      raise "cannot build docs because escript for ex_doc is not installed, make sure to \n#{@prerequisites}"
    end

    args = [@modulename, @version, Mix.Project.compile_path()]
    opts = ~w[--main #{@modulename} --source-ref v#{@version} --source-url #{@url}]

    Mix.shell.info("Running: #{ex_doc} #{inspect(args ++ opts)}")
    System.cmd(ex_doc, args ++ opts)
    Mix.shell.info("Docs built successfully")
  end

end
