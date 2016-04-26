require IEx

defmodule Argo.SessionController do
  @moduledoc """
    User session controller
  """

  use Argo.Web, :controller

  alias Argo.User
  alias Argo.Repo

  def new(conn, _params), do: render conn, "new.html"

  def create(conn, params = %{}) do
    conn
      |> put_flash(:info, "Вход на сайт выполнен успешно!")
      |> Guardian.Plug.sign_in(verify_user(params), :token)
      |> redirect(to: "/")
  end

  def destroy(conn, _params) do
    conn
      |> Guardian.Plug.sign_out
      |> put_flash(:info, "Выход из сайта выполнен")
      |> redirect(to: "/")
  end

  defp verify_user(%{"email" => email}) do
    User |> Repo.get_by(email: email)
  end
end
