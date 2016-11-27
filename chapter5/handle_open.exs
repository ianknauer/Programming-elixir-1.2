handle_open = fn
  {:ok, file}  -> "First line: #{IO.read(file, :line)}"
  {_,   error} -> "Error:  #{:file.format_error(error)}"
end

IO.puts handle_open.(File.open("../chapter4/with-scopes.exs"))
IO.puts handle_open.(File.open("HelloWorld"))
