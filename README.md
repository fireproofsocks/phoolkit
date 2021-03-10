# Phoolkit

This is a Phoenix toolkit that exists to provide endpoints that will produce all manner of HTTP errors, including a timeout.

## Examples

The routing pattern to note is `/api/:status`, e.g.

- /api/404 returns a 404 Not Found
- /api/200 returns a 200 Ok
- /api/timeout will hold the connection so it times out.

All standard HTTP status codes are covered.

## To Start

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Install Node.js dependencies with `npm install` inside the `assets` directory
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
