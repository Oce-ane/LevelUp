class UsersController < ApplicationController
  # before_action :authenticate_user!

  def index
    @user = current_user
  end

  def show
    @user = current_user
  end

  # def update_skills
  #   current_user.skill_ids = params[:skill_ids]
  #   if current_user.save
  #     head :ok
  #   else
  #     head :unprocessable_entity
  #   end
  # end
end
