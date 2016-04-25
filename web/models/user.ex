require IEx

defmodule Argo.User do
  @moduledoc """
    Admin user model
  """

  use Argo.Web, :model
  import Comeonin.Bcrypt, only: [hashpwsalt: 1]

  schema "users" do
    field :name, :string
    field :admin, :boolean, default: false
    field :email, :string
    field :encrypted_password, :string
    field :password, :string, virtual: true
    field :password_confirmation, :string, virtual: true

    timestamps
  end

  @min_password_length 8
  @min_text_length 3

  @required_fields ~w(name admin email password password_confirmation)
  @optional_fields ~w(encrypted_password)

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    IEx.pry
    model
    |> cast(params, @required_fields, @optional_fields)
    |> unique_constraint(:email)
    |> validate_length(:password, min: @min_password_length)
    |> validate_confirmation(:password)
    |> validate_length(:name, min: @min_text_length)
    |> validate_length(:email, min: @min_text_length)
    |> validate_format(:email, ~r/^.+@.+$/)
    |> hash_pwd
  end

  defp hash_pwd(cs) do
    case cs do
      %Ecto.Changeset{valid?: true, changes: %{password: password}} ->
        put_change cs, :encrypted_password, Comeonin.Bcrypt.hashpwsalt(password)
      _ -> cs
    end
  end
end
