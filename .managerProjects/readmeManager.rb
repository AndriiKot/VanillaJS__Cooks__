require 'pathname'

current_directory = Pathname.new(Dir.pwd)

parent_directory = current_directory.parent

readme_path = parent_directory.join('README.md')

# Проверяем, существует ли файл
if readme_path.exist?
  puts "Файл найден: #{readme_path}"
else
  puts "Файл README.md не найден на уровень выше."
end

