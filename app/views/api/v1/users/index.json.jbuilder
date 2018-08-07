json.users do
  json.array! @users do |user|
    json.extract! user, :id, :name, :avatar
    json.posts user.posts do |post|
      json.extract! post, :id, :content, :date
      json.date post.date.strftime("%m/%d/%y")
      json.comments post.comments do |comment|
        json.extract! comment, :id, :content
      end
    end
  end
end
