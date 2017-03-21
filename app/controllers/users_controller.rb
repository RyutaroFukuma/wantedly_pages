class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def show
    @user = User.find(params[:id])
    @skill = Skill.new
    user_skills = UserSkill.where(user_id: @user.id).includes(:skill, :user_skill_logs)
    @user_skill_hash = Hash.new(0)
    user_skills.each do |user_skill|
      @user_skill_hash[user_skill] = user_skill.user_skill_logs.to_a.count
    end
    @user_skill_hash = Hash[ @user_skill_hash.sort_by{ |_, v| -v } ]
  end


  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
   if @user.save
     log_in @user
    redirect_to @user
   else
    render 'new'
   end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to @user
    else
      render 'edit'
    end
  end

  private

   def user_params
     params.require(:user).permit(:name, :email, :password,
                    :password_confirmation)
   end
end

