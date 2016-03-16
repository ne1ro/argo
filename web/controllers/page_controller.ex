defmodule Argo.PageController do
  @moduledoc """
    Application controller
  """

  use Argo.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
