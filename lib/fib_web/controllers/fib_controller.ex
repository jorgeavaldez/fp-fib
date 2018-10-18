defmodule FibWeb.FibController do
  use FibWeb, :controller

  def fib(0), do: 0
  def fib(1), do: 1
  def fib(n), do: fib(n - 2) + fib(n - 1)

  def index(req, %{ "n" => n }) do
    result = n |> String.to_integer() |> fib()

    req
    |> render("index.html", n: n, result: result)
  end

  # takes a raw number and returns the fibonacci sequence to it
  def index(req, params) do
    index(req, %{ "n" => "10" })
  end

  def update(req, params) do
    index(req, %{ "n" => params["fib"]["n"] })
  end
end
