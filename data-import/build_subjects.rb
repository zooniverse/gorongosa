# {
#   "id": "536d22193ae740fc1e000001", 
#   "path": "/some/path/to/file"
# },

data = []
data = JSON.load(File.read("manifest.json"))

project = Project.where(name: 'wisconsin').first || Project.create({
  _id: BSON::ObjectId('53c94845edf877f277000001'),
  name: 'wisconsin',
  display_name: 'Snapshot Wisconsin',
  workflow_name: 'wisconsin'
})

workflow = project.workflows.first || Workflow.create({
  _id: BSON::ObjectId('53c9484cedf877f277000002'),
  project_id: project.id,
  primary: true,
  name: 'wisconsin',
  description: 'wisconsin',
  entities: []
})

WisconsinSubject.destroy_all
redis = WisconsinSubject.redis_set.redis
begin
  redis.keys('wisconsin*').each{ |key| redis.del key }
rescue
  puts "Redis isn't available"
end

data.each.with_index do |hash, index|
  puts "#{ index + 1 } / #{ data.length }"
  id = BSON::ObjectId(hash['id'])
  
  WisconsinSubject.create({
    _id: id,
    project_id: project.id,
    workflow_ids: [workflow.id],
    coords: [],
    location: {
      standard: "http://www.snapshotwisconsin.org/subjects/standard/#{ hash['id'] }.jpg"
    },
    metadata: {
      original_path: hash['path']
    }
  }) unless WisconsinSubject.where(_id: id).exists?
end

begin
  SubjectImporter.perform_async 'WisconsinSubject'
rescue
  puts "Redis isn't available"
end
