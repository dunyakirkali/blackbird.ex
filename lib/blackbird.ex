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

  @doc """
  C Combinator

  ## Examples

      iex> Blackbird.c(&Kernel.div/2).(2, 6)
      3

  """
  def c(f), do: fn x, y -> f.(y, x) end

  @doc """
  W Combinator

  ## Examples

      iex> Blackbird.w(&Kernel.div/2).(2)
      1

  """
  def w(f), do: fn x -> f.(x, x) end

  @doc """
  D Combinator

  ## Examples

      iex> Blackbird.d(&Kernel.==/2, &Kernel.abs/1).(12, -12)
      true

  """
  def d(f, g), do: fn x, y -> f.(x, g.(y)) end

  @doc """
  B1 Combinator

  ## Examples

      iex> Blackbird.b1(&Kernel.abs/1, &Kernel.*/2).(5, -5)
      25

  """
  def b1(f, g), do: fn x, y -> f.(g.(x, y)) end

  @doc """
  PSI Combinator

  ## Examples

      iex> Blackbird.psi(&Kernel.*/2, &Kernel.abs/1).(-5, 5)
      25

  """
  def psi(f, g), do: fn x, y -> f.(g.(x), g.(y)) end

  @doc """
  PHI Combinator

  ## Examples

      iex> Blackbird.phi(&Kernel.abs/1, &Kernel.*/2, &Kernel.-/1).(-5)
      25

  """
  def phi(f, g, h), do: fn x -> g.(f.(x), h.(x)) end
end
