json.extract! user, :id, :login_ID, :password, :name, :email, :created_at, :updated_at
json.url user_url(user, format: :json)
