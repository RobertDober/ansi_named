defmodule ColorNamed do
  @moduledoc """
  Add common color names to the already existing ones in IO.ANSI

  The most basic usage is to get the color code of a color name which can then be used in
  IO.Color

    iex(0)> ColorNamed.named_color(:indigo)
    51

  Which can then be used with IO.ANSI, however there is a more convenient function

      iex(0)> ColorNamed.ansi_code(:indigo)
      IO.ANSI.color(51)

  If your terminal supports it you can also use RGB values, like so

      iex(0)> ColorNamed.rgb_code("#f9a602")
      "\e[38;2;249;166;2m"

  with all of the HTML color names available

        iex(0)> ColorNamed
  """

  @additional_color_names %{
  }
  @doc """
  Just add names for all 256 colors
  """
  @spec named_color(atom()|binary()) :: non_neg_integer()
  def named_color(name) do
    Map.get(@additional_color_names, to_string(name))
  end




end
