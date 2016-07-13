defmodule Admin2.PageController do
  use Admin2.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
