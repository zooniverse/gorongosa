#!/usr/bin/env ruby

# writes coffeescript object with occurence count of animal images
# to "/app/lib/animal_counts"

file_to_write = "./app/lib/animal_counts.coffee"
js_object_name = "animalCounts"
top_comment = "# This file is generated from /data-import/animal_count_generator.rb\n" +
              "# It holds a count of each animal type in /public/images/animals"

coffee_file =  ""
coffee_file += "#{top_comment}\n\n#{js_object_name} =\n"

animal_names = Dir.entries("./public/images/animals")
  .reject {|e| e[0] == "."}            # don't include dotfiles
  .map {|e| e.split(".")[0].chop.chop} # split before extension and remove '-*' from filenames

counts_hash = animal_names.each_with_object(Hash.new(0)) do |animal, counts|
  counts[animal] += 1
end

counts_hash.each do |animal, count|
  coffee_file += "\s\s'#{animal}': #{count.to_s}\n"
end

coffee_file += "\nmodule?.exports = #{js_object_name}"

File.open(file_to_write, 'w') {|file| file.write(coffee_file)}

puts "Animal counts updated."
