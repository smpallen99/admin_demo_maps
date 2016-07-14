defmodule Admin2.Repo do
  use Ecto.Repo, otp_app: :admin2
  use Scrivener, page_size: 10
end
