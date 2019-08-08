defmodule ElixirTutorial do
  import Plug.Conn

  def init(options) do
    options
  end

  def call(conn, _opt) do
    conn
    |> IO.inspect()
    |> put_resp_content_type("text/plain")
    |> send_resp(200, "Hello world\n")
  end
end
