require 'find'

def find_and_replace_links_in_file(file_path)
  p file_path
  text = File.read(file_path)
  updated_text = text.gsub(/(http:\/\/www\.|https:\/\/www\.|http:\/\/|https:\/\/)[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?/) do |url|
    "[#{url}](#{url})"
  end
  if updated_text != text
    p "did something!!"
  end

  File.open(file_path, "w") { |file| file.puts updated_text }
end

def process_markdown_files(directory, extra_match="")
  p directory
  Dir.glob("#{directory}/**/*.md").each do |file_path|
    next unless file_path.include?(extra_match)
    p "Processing: #{file_path}"
    find_and_replace_links_in_file(file_path)
  end
end

process_markdown_files('_posts', ARGV[0])
