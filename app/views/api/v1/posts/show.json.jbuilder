json.extract! @post, :id, :content, :date
    json.post_user @post.user, :id, :name, :avatar
    json.comments @post.comments do |comment|
      json.extract! comment, :id, :content
      json.date comment.created_at.strftime("%m/%d/%y")
      json.comment_user comment.user, :id, :name, :avatar
    end
    json.like @post.votes_for.size
