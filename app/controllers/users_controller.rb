class UsersController < ApplicationController
  def index
  end

  def show
    @user = User.find(params[:id])
    @skill = Skill.new
    @user_skill = UserSkill.all
  end

  def new
  end
end
