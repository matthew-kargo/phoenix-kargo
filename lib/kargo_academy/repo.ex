defmodule KargoAcademy.Repo do
  use Ecto.Repo,
    otp_app: :kargo_academy,
    adapter: Ecto.Adapters.Postgres
end
