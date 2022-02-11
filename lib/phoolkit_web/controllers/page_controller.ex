defmodule PhoolkitWeb.PageController do
  use PhoolkitWeb, :controller

  def index(conn, _params) do
    text(conn, """
    Welcome to the Phoenix Toolkit!

    This is a simple web-app designed to simulate various responses.

    Request /api/xxx with any status code to receive a response with that status code.
    Request <code>/api/timeout</code> to experience a request timeout.
    """)
  end
end
