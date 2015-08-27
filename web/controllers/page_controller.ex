defmodule CardPlayers.PageController do
  use CardPlayers.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
