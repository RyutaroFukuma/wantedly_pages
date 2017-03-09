class SkillsController < ApplicationController
  def index
  end

  def show
  end

  def create
    user_id = params[:user_id]
    skill_name = params[:skill][:name]
    @user = User.find(user_id)
    @skill = Skill.find_by(name: skill_name)

    if @skills.nil?
      @skill = Skill.create(name: skill_name)
    end

    @user_skill = UserSkill.find_by(user_id: @user.id, skill_id: @skill.id)

    if @user_skills.nil?
      UserSkill.create(user_id: @user.id, skill_id: @skill.id, count: 0)
    end

    redirect_to "/users/#{@user.id}"
  end
end
