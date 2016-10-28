json.extract! ngo_user, :id, :ngo_id, :user_id, :created_at, :updated_at
json.url ngo_user_url(ngo_user, format: :json)