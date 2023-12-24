defmodule Blackbird do
  @moduledoc """
  Documentation for `Blackbird`.
  """

  @doc """
  I Combinator

  ## Examples

      iex> Blackbird.i(12)
      12

  """
  def i(x), do: x

  @doc """
  K Combinator

  ## Examples

      iex> Blackbird.k(12, 13)
      12

  """
  def k(x, _), do: x

  @doc """
  KI Combinator

  ## Examples

      iex> Blackbird.ki(12, 13)
      13

  """
  def ki(_, y), do: y
end
