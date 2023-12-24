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

  @doc """
  S Combinator

  ## Examples

      iex> Blackbird.s(&Kernel.==/2, &Kernel.abs/1).(-12)
      false

  """
  def s(f, g), do: fn x -> f.(x, g.(x)) end

  @doc """
  B Combinator

  ## Examples

      iex> Blackbird.b(&Kernel.-/1, &Kernel.abs/1).(-12)
      -12

  """
  def b(f, g), do: fn x -> f.(g.(x)) end
end
