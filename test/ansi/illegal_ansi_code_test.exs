defmodule Test.Ansi.IllegalAnsiCodeTest do
  use ExUnit.Case

  
  use ExUnit.Case

  import ColorNamed, only: [ansi_code: 1]

  describe "illegal ansi names" do
    test "get a legal code and scramble it" do
      legal_name = hd(ColorNamed.ansi_color_names)
      illegal_name = "xxx" <> String.reverse(legal_name) <> "yyy"
      expected_error_message = "Namespace ANSI, unknown name #{illegal_name}"
      assert_raise ColorNamed.UndefinedName, expected_error_message, fn ->
        ansi_code(illegal_name)
      end
    end
  end

end
