json.extract! task, :id, :identifier, :name, :description, :project_id, :project_bundle_id, :task_id, :estimated_time, :created_at, :updated_at
json.url task_url(task, format: :json)
