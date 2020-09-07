defmodule NflBackendWeb.PlayerController do
  use NflBackendWeb, :controller

  def list(conn, _params) do
    path = Application.app_dir(:nfl_backend, "priv/data/rushing.json")
    players = path |> File.read! |> Poison.decode!
    conn |> put_status(:ok) |> json(players)
  end
end
