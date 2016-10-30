json.extract! student, :id, :user_id, :level_id, :created_at, :updated_at
json.url student_url(student, format: :json)