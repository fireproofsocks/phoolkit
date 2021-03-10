defmodule PhoolkitWeb.ApiController do
  use PhoolkitWeb, :controller

  alias Plug.Conn.Status

  require Logger

  def index(conn, %{"status" => "timeout"}) do
    Process.sleep(60_000)

    json(conn, "Timeout")
  end

  def index(conn, %{"status" => status}) do
    status = String.to_integer(status)

    conn
    |> Plug.Conn.put_status(status)
    |> json(
      status
      |> Status.reason_phrase()
    )
  end
end
