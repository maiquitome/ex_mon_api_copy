defmodule ExMonCopy.Repo do
  use Ecto.Repo,
    otp_app: :ex_mon_copy,
    adapter: Ecto.Adapters.Postgres
end
