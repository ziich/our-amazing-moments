class Post < ApplicationRecord
  belongs_to :user
  acts_as_votable
  has_many :photos, dependent: :destroy
  has_many :comments, dependent: :destroy
  validates :content , presence: true
  def num_likes
    get_likes.size
  end

  def num_comments
    comments.size
  end

  def post_created_at
    created_at.strftime("%A, %b %d, %Y")
  end
end
