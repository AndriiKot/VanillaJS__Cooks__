require 'pathname'
require 'fileutils'

current_folder = Pathname.new(Dir.pwd)
parent_folder = current_folder.parent

subfolders = parent_folder.children.select(&:directory?)


subfolders.each do |folder|
  link = folder.basename.to_s if folder.basename.to_s.match?(/^_(\d{1})/)
  folder.children.each_with_index do |child, i|
    childname = child.basename.to_s
    child_filter = childname.match?(/^_(\d{1})/)
    if child_filter
    content = File.read(child.join("pattern.js"))
      File.open(child.join("README.md"), "w+") do |f|
        f.puts  "#### ! For the code to work correctly, use 'live server' in Visual Studio Code !\n\n"
        f.puts "```js\n"
        f.puts content
        f.puts "```\n"
        f.puts "[![Pattern Checked Buttons](https://github.com/AndriiKot/VanillaJS__Cooks/blob/main/#{link}/__demo__/__v1_0_0__.png)](https://github.com/AndriiKot/VanillaJS__Cooks/blob/main/#{link}/_00-0__Best__Praxe__)\n\n"
      end
    end
  end
end

