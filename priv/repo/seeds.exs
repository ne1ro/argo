# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
pass = System.get_env "ADMIN_PASSWORD"

Argo.User.changeset(%Argo.User{}, %{
  name: "admin",
  email: System.get_env("ADMIN_EMAIL"),
  admin: true,
  password: pass,
  password_confirmation: pass
}) |> Argo.Repo.insert_or_update!

#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
