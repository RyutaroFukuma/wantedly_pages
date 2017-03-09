class User < ApplicationRecord
  has_many :user_skills
  validates :name, presence: true
  validates :email, presence: true
end
