defmodule InstalacaoSolar.Repo do
  use Ecto.Repo,
    otp_app: :instalacao_solar,
    adapter: Ecto.Adapters.Postgres
end
