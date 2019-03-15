
json.key_format!
# camelize: :lower


@users.each do |user|
  json.set! user.id do
    json.extract! user, :email, :username, :password_digest, :id
  end
end
