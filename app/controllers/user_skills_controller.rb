class UserSkillsController < ApplicationController
  def plus
    @user_skill = UserSkill.find_by user_id: params[:user_id]
    id = params[:user_skill_id]
    user_skill = UserSkill.find(id)
    user_skill.count += 1
    user_skill.save
    redirect_to "/users/#{user_skill.user.id}"
  end
end
