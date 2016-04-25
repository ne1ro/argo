defmodule Argo.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :name, :string, null: false
      add :admin, :boolean, default: false
      add :email, :string, null: false
      add :encrypted_password, :string, null: false

      timestamps
    end
  end
end
