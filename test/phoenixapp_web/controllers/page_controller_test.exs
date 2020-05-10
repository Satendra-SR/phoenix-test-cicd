defmodule PhoenixappWeb.PageControllerTest do
  use PhoenixappWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 403) =~ "Welcome to Phoenix!"
  end
end
