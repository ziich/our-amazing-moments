json.array! @comments do |comment|
  json.extract! comment, :id, :content, :created_at
  json.user do
    json.extract! comment.user, :name, :avatar, :image_url
  end
end
