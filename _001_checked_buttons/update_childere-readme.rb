require 'pathname'

current_folder = Pathname.new(Dir.pwd)

folders = Dir.glob("#{current_folder}/*").map { |f| Pathname.new(f) }
folders.each do |folder|
  last_segment = folder.basename.to_s
  if last_segment.match?(/_(\d{1})/)
    content = File.read(folder.join("pattern.js"))

     File.open(folder.join("README.md"), "w+") do |f|
      f.puts  "#### ! For the code to work correctly, use 'live server' in Visual Studio Code !\n\n"
      f.puts  "### Best Praxe:\n\n"
      f.puts "```js\n"
      f.puts content
      f.puts "```\n"
      f.puts "[![Pattern Checked Buttons](https://github.com/AndriiKot/VanillaJS__Cooks/blob/main/_001_checked_buttons/__demo__/__v1_0_0__.png)](https://github.com/AndriiKot/VanillaJS__Cooks/blob/main/_001_checked_buttons/_00-0__Best__Praxe__)\n\n"
     end
  end
end