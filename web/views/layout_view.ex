defmodule Argo.LayoutView do
  @moduledoc """
    Application layout view
  """

  use Argo.Web, :view

  def current_user(conn), do: Guardian.Plug.current_resource(conn)
end
