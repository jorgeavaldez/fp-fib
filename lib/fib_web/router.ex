defmodule FibWeb.Router do
  use FibWeb, :router

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

  scope "/", FibWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/fib", FibController, :index
    post "/fib", FibController, :update
  end

  # Other scopes may use custom stacks.
  # scope "/api", FibWeb do
  #   pipe_through :api
  # end
end
