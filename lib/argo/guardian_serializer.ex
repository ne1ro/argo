defmodule Argo.GuardianSerializer do
  @moduledoc """
    Application guardian serializer
  """

  @behaviour Guardian.Serializer

  alias Argo.Repo
  alias Argo.User

  def for_token(user = %User{}), do: {:ok, "User:#{user.id}"}
  def for_token(_), do: {:error, "Unknown resource type"}

  def from_token("User:" <> id), do: {:ok, Repo.get(User, id)}
  def from_token(_), do: {:error, "Unknown resource type"}
end
