defmodule ElixirTutorial.Router do
  use Plug.Router
  require Logger

  # JASONの設定
  plug Plug.Parsers,
    parsers: [:urlencoded, :json],
    pass: ["application/json"],
    json_decoder: Jason
  plug :match
  plug :dispatch

  get "/" do
    send_response(conn, 200, "Welcome Elixir Tutorial")
  end

  post "/api" do
    Logger.info(conn.body_params["name"])
    send_response(conn, 200, "Hello, jason world.")
  end

  match _ do
    send_response(conn, 400, "Oops!")
  end

  defp send_response(conn, status, message) do
    conn
      |> put_resp_content_type("text/plain")
      |> send_resp(status, message)
  end

end