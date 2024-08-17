require 'pathname'
require 'fileutils'

current_folder = Pathname.new(Dir.pwd)
parent_folder = current_folder.parent

subfolders = parent_folder.children.select(&:directory?)


subfolders.each do |folder|
  versions = []
  link = folder.basename.to_s if folder.basename.to_s.match?(/^_(\d{1})/)
  folder.children.each do |child|
    childname = child.basename.to_s
    child_filter = childname.match?(/^_(\d{1})/)
    if child_filter && !childname.match?(/_00-0__Best__Praxe__/)
    content = File.read(child.join("pattern.js"))
      File.open(child.join("README.md"), "w+") do |f|
        f.puts  "#### ! For the code to work correctly, use 'live server' in Visual Studio Code !\n\n"
        f.puts "```js\n"
        f.puts content
        f.puts "```\n"
        f.puts "[![Pattern Checked Buttons](https://github.com/AndriiKot/VanillaJS__Cooks/blob/main/#{link}/__demo__/__v1_0_0__.png)](https://github.com/AndriiKot/VanillaJS__Cooks/blob/main/#{link}/_00-0__Best__Praxe__)\n\n"
      end
      versions << child
    end
  end

  last_version = versions.last
  FileUtils.rm_rf(folder.join("_00-0__Best__Praxe__")) if folder.join("_00-0__Best__Praxe__").exist?
  FileUtils.cp_r(last_version, folder.join("_00-0__Best__Praxe__")) if folder.basename.to_s.match?(/^_(\d{1})/)
  if folder.basename.to_s.match?(/^_(\d{1})/)
    pattern_name = folder.basename.to_s
    pattern_name = "Pattern " + pattern_name.split("_").reject{|x| x.to_i > 0 || x == ''}.map(&:capitalize).join(" ")
    File.open(folder.join("README.md"), "w+") do |f|
      f.puts("# #{pattern_name}\n")
      f.puts "[![#{pattern_name}](https://github.com/AndriiKot/VanillaJS__Cooks/blob/main/#{link}/__demo__/__v1_0_0__.png)](https://github.com/AndriiKot/VanillaJS__Cooks/blob/main/#{link}/_00-0__Best__Praxe__)\n"
      f.puts("\n")
      f.puts("### Best Praxe:\n")
      f.puts("```js\n")
      f.puts(File.read(folder.join("_00-0__Best__Praxe__").join("pattern.js")))
      f.puts("```\n")
    end
  end
end




