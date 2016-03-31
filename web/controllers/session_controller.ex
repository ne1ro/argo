defmodule Argo.SessionController do
  @moduledoc """
    User session controller
  """

  use Argo.Web, :controller

  alias MyApp.User

  def new(conn, _params) do
    render conn, "new.html"
  end
end
