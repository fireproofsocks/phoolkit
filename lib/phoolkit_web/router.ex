defmodule PhoolkitWeb.Router do
  use PhoolkitWeb, :router

  pipeline :browser do
    plug(:accepts, ["html"])
    plug(:fetch_session)
    plug(:fetch_flash)
    plug(:protect_from_forgery)
    plug(:put_secure_browser_headers)
  end

  pipeline :api do
    plug(:accepts, ["json"])
  end

  scope "/", PhoolkitWeb do
    pipe_through(:browser)

    get("/", PageController, :index)
  end

  scope "/api", PhoolkitWeb do
    pipe_through(:browser)

    get("/:status", ApiController, :index)
  end
end
