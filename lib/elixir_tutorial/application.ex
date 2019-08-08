defmodule ElixirTutorial.Application do
  @moduledoc false

  use Application
  require Logger

  defp cowboy_port, do: Application.get_env(:elixir_tutorial, :cowboy_port, 80)

  def start(_type, _args) do
    children = [
      {Plug.Cowboy, scheme: :http, plug: ElixirTutorial.Router, options: [port: cowboy_port()]}
    ]

    opts = [strategy: :one_for_one, name: ElixirTutorial.Supervisor]

    Logger.info("Starting application...")
    Supervisor.start_link(children, opts)
  end
end
