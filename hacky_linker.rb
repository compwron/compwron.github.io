puts a.split("\n").map { |line|
  if line.include?('https')
    parts = line.split(" ").first.split("/")
    name = parts[parts.size - 2 .. parts.size - 1].join("/").downcase
    url = parts.join("/")
    "[#{name}](#{url}) #{line}"
  else
    line
  end
}

