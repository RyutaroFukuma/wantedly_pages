class UserSkillsController < ApplicationController
  def plus
    id = params[:user_skill_id]
    user_skill = UserSkill.find(id)
    user_skill.count += 1
    user_skill.save
    redirect_to "/users/#{user_skill.user.id}"
    #redirect_to "/users/#{user_skill.user.id}"
  end
end
