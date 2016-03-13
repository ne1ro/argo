defmodule Argo.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :name, :string, null: false
      add :admin, :boolean, default: false
      add :email, :string, null: false
      add :password, :string, null: false
      add :password_confirmation, :string

      timestamps
    end
  end
end
