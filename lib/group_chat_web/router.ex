defmodule GroupChatWeb.Router do
  use GroupChatWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", GroupChatWeb do
    pipe_through :browser

    get "/", PageController, :index
    get "/ping", PingController, :index
    get "/ping/:messenger", PingController, :show
  end

  # Other scopes may use custom stacks.
  # scope "/api", GroupChatWeb do
  #   pipe_through :api
  # end
end
