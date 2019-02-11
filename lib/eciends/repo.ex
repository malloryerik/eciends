defmodule Eciends.Repo do
  use Ecto.Repo,
    otp_app: :eciends,
    adapter: Ecto.Adapters.Postgres
end
