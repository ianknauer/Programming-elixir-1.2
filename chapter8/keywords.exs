defmodule Canvas do
  @defaults [ fg: "black", bg: "white", font: "Merriweather" ]

  def draw_test(text, options \\ []) do
    options = Keyword.merge(@defaults, options)
    IO.puts "Drawing text #{inspect(text)}"
    IO.puts "Foreground:  #{options[:fg]}"
    IO.puts "Background:  #{Keyword.get(options, :bg)}"
    IO.puts "Font:        #{Keyword.get(options, :font)}"
    IO.puts "Pattern:     #{Keyword.get(options, :pattern, "solid")}"
    IO.puts "style        #{inspect Keyword.get_values(options, :style)}"
  end
end

Canvas.draw_test("hello", fg: "red", style: "italic", style: "bold")
