defmodule Phoolkit.Repo do
  use Ecto.Repo,
    otp_app: :phoolkit,
    adapter: Ecto.Adapters.Postgres
end
