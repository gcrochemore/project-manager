json.extract! task, :id, :identifier, :task_type_id, :task_status_id, :name, :description, :project_id, :project_bundle_id, :task_id, :estimated_time, :created_at, :updated_at
json.url task_url(task, format: :json)
