defmodule Admin2.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :name, :string
      add :nicknames, {:array, :string}
      add :tokens, {:array, :integer}

      timestamps()
    end

  end
end
