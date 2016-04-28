defmodule Argo.LayoutView do
  @moduledoc """
    Application layout view
  """

  use Argo.Web, :view
  use Phoenix.ConnTest

  def logged_as_admin?(conn), do: Guardian.Plug.authenticated?(conn, :admin)
  def admin_user(conn), do: Guardian.Plug.current_resource(conn, :admin)

  def logged_in?(conn), do: Guardian.Plug.authenticated?(conn)
  def current_user(conn), do: Guardian.Plug.current_resource(conn)

  def show_flash(conn), do: get_flash(conn) |> alert

  defp alert(%{"info" => msg}) do
    ~E"<div class='alert alert-info alert-dismissible'>
        <button type='button' class='close' data-dismiss='alert'>
          <span aria-hidden='true'>&times;</span>
         </button>
         <%= msg %>
       </div>"
  end

  defp alert(%{"error" => msg}) do
    ~E"<div class='alert alert-danger alert-dismissible'>
        <button type='button' class='close' data-dismiss='alert'>
          <span aria-hidden='true'>&times;</span>
         </button>
         <%= msg %>
       </div>"
  end

  defp alert(_), do: nil
end
