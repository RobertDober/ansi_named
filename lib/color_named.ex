defmodule ColorNamed do
  @moduledoc """
  Add common color names to the already existing ones in IO.ANSI

  The most basic usage is to get the color code of a color name which can then be used in
  IO.Color

      iex(0)> ColorNamed.ansi_color(:indigo)
      {54}

  Which can then be used with IO.ANSI, however there is a more convenient function

      iex(1)> ColorNamed.ansi_code(:indigo)
      IO.ANSI.color(54)

  If your terminal supports it you can also use RGB values, like so

      iex(2)> ColorNamed.rgb_code("#f9a602")
      "\e[38;5;249;166;2m"

  with all of the HTML color names available

        iex(3)> ColorNamed.html_color("Gold")
        {255, 215, 0}

  which, then, of course can be plugged into `rgb_code` again

      iex(4)> ColorNamed.rgb_code("Gold")
      "\e[38;5;255;215;0m"

  Other color name spaces might follow
  """


  use __MODULE__.AnsiColorNames
  use __MODULE__.HtmlColorNames
  use __MODULE__.Types

  @doc """
  ANSI code from an ansi color name
        iex(5)> ansi_code(:olive_drab)
        "\e[38;5;64m"
  """
  @spec ansi_code(color_name_t()) :: binary()
  def ansi_code(colorname) do
    {color} = ansi_color(colorname)
    IO.ANSI.color(color)
  end

  @doc """
  Just add names for all 256 colors
  """
  @spec ansi_color(color_name_t()) :: ansi_color_t()
  def ansi_color(name) do
    case Map.fetch(@ansi_color_names, to_string(name)) do
      {:ok, value} -> {value}
      :error     -> raise(ColorNamed.UndefinedName, "Namespace ANSI, unknown name #{name}")
    end
  end

  @doc """
    HTML color name to an RGB triple
  """
  @spec html_color(color_name_t()) :: rgb_color_t()
  def html_color(name) do
    case Map.fetch(@html_color_names, to_string(name)) do
      {:ok, value} -> value
      :error     -> raise(ColorNamed.UndefinedName, "Namespace HTML, unknown name #{name}")
    end
  end

  @spec rgb_code(binary()) :: binary()
  def rgb_code(hex_or_name)
  def rgb_code("#" <> hex) do
    {r, g, b} = _parse_hex(hex)
    _ansi_rgb(r, g, b)
  end
  def rgb_code(name) do
    {r, g, b} = html_color(name)
    _ansi_rgb(r, g, b)
  end


  @spec _ansi_rgb(rgb_byte_t(), rgb_byte_t(), rgb_byte_t()) :: binary()
  defp _ansi_rgb(r, g, b) do
    "\e[38;5;#{r};#{g};#{b}m"
  end

  @hex_rg ~r"\A ([a-f0-9]{2}) ([a-f0-9]{2}) ([a-f0-9]{2}) \z"ix
  @spec _parse_hex(binary()) :: rgb_color_t()
  defp _parse_hex(hex) do
    case Regex.run(@hex_rg, hex) do
      nil -> raise(ColorNamed.UndefinedName, "Namespace RGB, illegal hex RGB spec #{hex}")
      [_|rgb] -> _rgb_to_tuple(rgb)
    end
  end

  @spec _rgb_to_tuple(list(binary())) :: rgb_color_t()
  defp _rgb_to_tuple(rgb) do
    rgb
    |> Enum.map(fn byte ->
      {value, ""} = Integer.parse(byte, 16)
      value
    end) 
    |> List.to_tuple
  end
end
