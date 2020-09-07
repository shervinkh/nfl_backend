defmodule NflBackendWeb.PlayerControllerTest do
  use NflBackendWeb.ConnCase

  test "GET /api/v1/players", %{conn: conn} do
    conn = get(conn, "/api/v1/players")
    assert is_list(json_response(conn, 200))
  end
end
