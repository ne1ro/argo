defmodule Argo.PageControllerTest do
  use Argo.ConnCase

  test "GET /", %{conn: conn} do
    conn = get conn, "/"
    assert html_response(conn, 200) =~ "Арго Белгород"
  end
end
