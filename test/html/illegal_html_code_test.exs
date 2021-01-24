defmodule Test.Html.IllegalHtmlCodeTest do
  use ExUnit.Case

  import ColorNamed, only: [html_code: 1]

  describe "illegal html codes" do
    test "get a legal name and scramble it" do
      legal_name = hd(ColorNamed.html_color_names)
      illegal_name = "xxx" <> String.reverse(legal_name) <> "yyy"
      expected_error_message = "Namespace HTML, unknown name #{illegal_name}"
      assert_raise ColorNamed.UndefinedName, expected_error_message, fn ->
        html_code(illegal_name)
      end
    end


    test "a bad hex" do
      illegal_spec = "#fkffff"
      expected_error_message = "Namespace RGB, illegal hex RGB spec #{illegal_spec}"
      assert_raise ColorNamed.UndefinedName, expected_error_message, fn ->
        html_code(illegal_spec)
      end
    end
  end
end
