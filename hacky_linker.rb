require 'find'

def find_and_replace_links_in_file(file_path)
  text = File.read(file_path)
  updated_text = text.gsub(/(http(s)?:\/\/)?(\w+\.)?\w+\.\w{2,}(\:\d+)?(\/\S*)?/) do |url|
    "[#{url}](#{url})"
  end

  if updated_text != text
    File.open(file_path, "w") { |file| file.puts updated_text }
    puts "Updated file: #{file_path}"
  else
    puts "No changes made to: #{file_path}"
  end
end

def process_markdown_files(directory, extra_match = "")
  Dir.glob("#{directory}/**/*.md").each do |file_path|
    next unless extra_match.empty? || file_path.include?(extra_match)
    find_and_replace_links_in_file(file_path)
  end
end

if ARGV.length > 0
  process_markdown_files('_posts', ARGV[0])
else
  process_markdown_files('_posts')
end