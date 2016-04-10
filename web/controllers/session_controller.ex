defmodule Argo.SessionController do
  @moduledoc """
    User session controller
  """

  use Argo.Web, :controller

  alias Argo.User

  def new(conn, _params) do
    render conn, "new.html"
  end

  def create(conn, _params = %{}) do
    conn
      |> put_flash(:info, "Вход на сайт выполнен успешно!")
      |> Guardian.Plug.sign_in(verify_user(_params), :token)
      |> redirect(to: "/")
  end

  def destroy(conn, _params) do
    Guardian.Plug.sign_out(conn)
      |> put_flash(:info, "Выход из сайта выполнен")
      |> redirect(to: "/")
  end

  defp verify_user(params) do
    params
  end
end
