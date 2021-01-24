defmodule ColorNamed.Types do
  defmacro __using__(_opts) do
    quote do
      @type ansi_color_t :: {non_neg_integer()}
      @type color_name_t :: atom() | binary()
      @type rgb_byte_t :: 0..255
      @type rgb_color_t :: {rgb_byte_t(), rgb_byte_t(), rgb_byte_t()}
    end
  end
end
