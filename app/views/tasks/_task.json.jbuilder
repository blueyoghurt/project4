json.extract! task, :id, :description, :template_id, :completion, :created_at, :updated_at
json.url task_url(task, format: :json)