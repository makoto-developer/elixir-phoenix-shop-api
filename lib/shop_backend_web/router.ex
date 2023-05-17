defmodule ShopBackendWeb.Router do
  use ShopBackendWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ShopBackendWeb do
    pipe_through :api
  end
end
