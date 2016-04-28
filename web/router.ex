defmodule Argo.Router do
  @moduledoc """
    Application router
  """

  use Argo.Web, :router

  pipeline :browser_session do
    plug Guardian.Plug.VerifySession
    plug Guardian.Plug.LoadResource
  end

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
    plug Guardian.Plug.VerifyHeader
    plug Guardian.Plug.LoadResource
  end

  scope "/", Argo do
    pipe_through [:browser, :browser_session] # Use the default browser stack

    get "/", PageController, :index
    get "/users/sign_in", SessionController, :new
    post "/users/sign_in", SessionController, :create
    delete "/users/log_out", SessionController, :destroy

    get "/users/:id", UserController, :show
    patch "/users/:id", UserController, :update
  end

  # Other scopes may use custom stacks.
  # scope "/api", Argo do
  #   pipe_through :api
  # end
end
