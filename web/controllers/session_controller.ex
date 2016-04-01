defmodule Argo.SessionController do
  @moduledoc """
    User session controller
  """

  use Argo.Web, :controller

  alias Argo.User

  plug :scrub_params, "user" when action in [:create]

  def new(conn, _params) do
    render conn, "new.html"
  end

  def create(conn, _params = %{}) do
    conn
      |> put_flash(:info, "Logged in.")
      # |> Guardian.Plug.sign_in(verified_user) # verify your logged in resource
      |> redirect(to: "/")
  end

  def destroy(conn, _params) do
    Guardian.Plug.sign_out(conn)
      |> put_flash(:info, "Logged out successfully.")
      |> redirect(to: "/")
  end
end
