defmodule FibWeb.PageController do
  use FibWeb, :controller

  def track_visits(req) do
    visits = get_session(req, "visits") || 0
    visits = visits + 1

    { visits, put_session(req, "visits", visits) }
  end

  def index(req, %{ "name" => name }) do
    { visits, req } = track_visits(req)

    req
    |> render("index.html", name: name, visits: visits)
  end

  def index(req, params) do
    index(req, %{ "name" => "jorge" })
  end

end
