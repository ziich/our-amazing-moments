class User < ApplicationRecord
  acts_as_voter
  has_many :comments, dependent: :destroy
  has_many :posts, dependent: :destroy
  # validates :name, presence: true
  # validates :avatar, presence: true
end
