json.posts do
  json.array! @posts do |post|
    json.extract! post, :id, :content, :date
  end
end
