require 'bson'
require 'json'

# top 34
# bottom 67

inputs_path = './inputs'
outputs_path = './outputs'

`mkdir -p ./outputs/images`

json = []
errors = []

count = Dir["#{ inputs_path }/**/*.JPG"].length

Dir["#{ inputs_path }/**/*.JPG"].each_with_index do |f, index|
  next if File.directory?(f)

  puts "#{index + 1} / #{count} - #{ f.gsub(/#{inputs_path}/, '') }"
  subject = {}

  id = BSON::ObjectId.new.to_s
  new_file_path = "#{outputs_path}/images/#{id}.jpg"
  info = `identify -format "%wx%h" "#{f}"`
  width, height = info.strip.split('x')
  out = `convert "#{f}" -strip -crop #{width}x#{height.to_i - 100}+0+34 +repage -quality 80 -resize 800 #{new_file_path}`

  # this isn't thorough in the slightest
  if out.include?("error")
    puts "#{f} produced an error."
    errors << f
    next
  end

  path = f.gsub(/#{inputs_path}/, '')

  json << {
    id: id,
    path: path
  }
end

File.open("#{outputs_path}/manifest.json", 'w'){ |out| out.puts JSON.dump(json) }

File.open("#{outputs_path}/errors.json", 'w'){ |out| out.puts JSON.dump(errors) }

puts 'Done!'
