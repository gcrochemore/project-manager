json.extract! task, :id, :identifier, :task_type_id, :task_status_id, :name, :description, :project_id, :project_bundle_id, :task_id, :estimated_time, :consumed_time, :remaining_time, :planned_time, :begin_date, :end_date, :created_at, :updated_at
json.url task_url(task, format: :json)
