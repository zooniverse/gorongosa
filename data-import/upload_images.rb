require 'json'
require 'bson'
require 'aws-sdk'

AWS.eager_autoload!
AWS.config access_key_id: ENV['AMAZON_ACCESS_KEY_ID'], secret_access_key: ENV['AMAZON_SECRET_ACCESS_KEY']
s3 = AWS::S3.new
@bucket = s3.buckets['zooniverse-static']

def upload(id)
  obj = @bucket.objects["www.snapshotwisconsin.org/subjects/standard/#{ id }.jpg"]
  obj.write(file: "./outputs/images/#{id}.jpg", acl: :public_read, content_type: 'image/jpeg') until obj.exists?
rescue => e
  puts "Rescued #{ e.message }"
  retry
end

files = Dir['./outputs/**/*.jpg']

total = files.length
files.each_slice(25).with_index do |list, i|
  puts "Uploading #{ [(i + 1) * 25, total].min } / #{ total }"
  threads = []
  
  list.each do |file|
    threads << Thread.new do
      id = File.basename file, '.jpg'
      upload id
    end
  end
  
  threads.each &:join
end; nil
