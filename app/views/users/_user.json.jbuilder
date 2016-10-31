json.extract! user, :id, :email, :password_digest, :admin, :school, :ngo, :first_name, :last_name, :created_at, :updated_at
json.url user_url(user, format: :json)