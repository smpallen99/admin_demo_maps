defmodule Admin2.ExAdmin.User do
  use ExAdmin.Register

  register_resource Admin2.User do

    index do
      selectable_column
      column :id
      column :name
      column :nicknames
      column :tokens
      column :stats
      column :addresses
    end
    show user do
      attributes_table except: [:addresses] #  all: true
      # attributes_table do
      #   row :id
      #   row :name
      #   row :nicknames
      #   row :tokens
      #   row :stats
      # end

      panel "Addresses" do
        table_for user.addresses do
          column :street
          column :city
        end
      end

    end
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
      inputs "Addresses" do
        input user, :addresses, schema: [street: :string, city: :string]
      end
    end
  end
end
