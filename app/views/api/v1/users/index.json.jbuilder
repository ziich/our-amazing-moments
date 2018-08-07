json.users do
  json.array! @users do |user|
    json.extract! user, :id, :name, :avatar
      end
end
