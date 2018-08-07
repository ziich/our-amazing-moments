json.extract! @user, :id, :name, :avatar
json.posts @user.posts do |post|
  json.extract! post, :id, :content, :date
  json.date post.created_at.strftime("%m/%d/%y")
end

