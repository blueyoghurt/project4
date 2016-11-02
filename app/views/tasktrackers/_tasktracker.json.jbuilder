json.extract! tasktracker, :id, :approval, :picture, :description, :card_id, :task_id, :created_at, :updated_at
json.url tasktracker_url(tasktracker, format: :json)