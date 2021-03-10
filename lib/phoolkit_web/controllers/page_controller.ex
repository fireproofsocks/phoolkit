defmodule PhoolkitWeb.PageController do
  use PhoolkitWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
