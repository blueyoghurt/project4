json.extract! school_user, :id, :school_id, :user_id, :created_at, :updated_at
json.url school_user_url(school_user, format: :json)