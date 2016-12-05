defmodule PhoenixWebpackExample.PageController do
  use PhoenixWebpackExample.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
