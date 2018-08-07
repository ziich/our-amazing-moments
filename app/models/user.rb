class User < ApplicationRecord
  has_many :comments
  has_many :posts
  validates :name, presence: true
  validates :avatar, presence: true
end
