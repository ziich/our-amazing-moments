class Post < ApplicationRecord
  belongs_to :user
  acts_as_votable
  has_many :photos, dependent: :destroy
  has_many :comments, dependent: :destroy
  validates :content, :date, presence: true
end
