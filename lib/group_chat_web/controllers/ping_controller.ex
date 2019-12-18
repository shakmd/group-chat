defmodule GroupChatWeb.PingController do
  use GroupChatWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def show(conn, params) do
    render(conn, "show.html", messenger: params["messenger"])
  end

end
