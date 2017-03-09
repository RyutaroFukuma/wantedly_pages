class User < ApplicationRecord
  has_many :user_skills
  validates :name,  presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 255 }
end
