defmodule Admin2.User do
  use Admin2.Web, :model

  schema "users" do
    field :name, :string
    field :nicknames, {:array, :string}
    field :tokens, {:array, :integer}
    field :addresses, {:array, :map}
    field :stats, :map

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    # params = format_nicknames params
    struct
    |> cast(params, [:name, :nicknames, :tokens, :addresses, :stats])
    # |> format_nicknames
    |> validate_required([:name])
  end

  # def format_nicknames(%{"nicknames" => nicknames} = params) when is_binary(nicknames) do
  #   Map.put params, "nicknames", String.split(nicknames, " ")
  # end
  # def format_nicknames(params) do
  #   params
  # end
end
