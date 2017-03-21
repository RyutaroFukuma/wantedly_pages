class UserSkillsController < ApplicationController
  def plus
    id = params[:user_skill_id]
    user_skill = UserSkill.find(id)
    user_skill_log = UserSkillLog.find_by(
        user_skill_id: user_skill.id,
        user_id: current_user.id
    )
    if user_skill_log.nil?
      UserSkillLog.create(
          user_skill_id: user_skill.id,
          user_id: current_user.id,
          active: true
      )
    else
      user_skill_log.destroy
    end
    redirect_to "/users/#{user_skill.user.id}"
    #redirect_to "/users/#{user_skill.user.id}"
  end
end
