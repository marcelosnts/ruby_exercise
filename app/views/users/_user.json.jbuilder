json.extract! user, :id, :full_name, :email, :avatar_image, :role, :created_at, :updated_at
json.url user_url(user, format: :json)
