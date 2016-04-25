defmodule Argo.LayoutView do
  @moduledoc """
    Application layout view
  """

  use Argo.Web, :view

  def logged_as_admin?(conn), do: Guardian.Plug.authenticated?(conn, :admin)
  def admin_user(conn), do: Guardian.Plug.current_resource(conn, :admin)

  def logged_in?(conn), do: Guardian.Plug.authenticated?(conn)
  def current_user(conn), do: Guardian.Plug.current_resource(conn)
end
