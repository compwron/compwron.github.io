
# lines = File.readlines("/Users/lgoldste/repositories/compwron.github.io/_posts/2016-09-21-planet-labs-python-project-night.md")

file = ARGV[0] || "/Users/lgoldste/repositories/compwron.github.io/asdf.txt"
lines = File.readlines(file)

a = lines.map {|i|
  i.split(" ").map {|i|
    a = i.match(/http.*/)
    if a != nil then
      "[#{i}](#{i})"
    else
      i
    end
  }.join(" ")
}

`#{A} > #{file}`
