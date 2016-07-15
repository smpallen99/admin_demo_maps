# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Admin2.Repo.insert!(%Admin2.SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias Admin2.{Repo, User}

Repo.delete_all User

Repo.insert! %User{name: "Test", nicknames: ~w(dude slopy), stats: %{"age" => 50, "height" => "69", "birthday" => "May 18, 1963"}}
