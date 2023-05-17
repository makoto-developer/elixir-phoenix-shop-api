defmodule ShopBackend.Repo do
  use Ecto.Repo,
    otp_app: :shop_backend,
    adapter: Ecto.Adapters.Postgres
end
