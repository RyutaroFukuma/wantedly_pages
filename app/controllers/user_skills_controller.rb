class UserSkillsController < ApplicationController
  def plus

    id = params[:user_skill_id]
    user_skill = UserSkill.find(id)
    user_skill.count += 1
    user_skill.save
    redirect_to "/user/#{user_skill.user.id}"
  end
end
