class UserSkillLog < ApplicationRecord
  has_many :users
  has_many :user_skills

  validates_uniqueness_of :user_id, scope: :user_skill_id
end
