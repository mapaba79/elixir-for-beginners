# Keyword lists allow duplicate keys and ordered data
options = [primary: true, color: "blue", color: "red"]

IO.puts("Primary: #{options[:primary]}")

# Often used in fucntiuon arguments
IO.inspect(Keyword.get(options, :color))
IO.inspect(Keyword.get_values(options, :color))
