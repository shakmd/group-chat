defmodule GroupChatWeb.PageController do
  use GroupChatWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
