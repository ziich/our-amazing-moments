class User < ApplicationRecord
  acts_as_voter
  has_many :comments
  has_many :posts
  # validates :name, presence: true
  # validates :avatar, presence: true
end
