defmodule Admin2.ExAdmin.User do
  use ExAdmin.Register

  register_resource Admin2.User do

    form user do
      inputs "User Details" do
        input user, :name
        input user, :nicknames
        input user, :tokens, select2: [tags: true]
        # input user, :addresses
      end
      inputs "Statistics" do
        input user, :stats, schema: [age: :integer, height: :string, birthday: :string]
      end
    end
  end
end
