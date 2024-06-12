class LevelsController < ApplicationController
  before_action :set_level, only: [:update]

  def index
    @levels = Level.all
  end

  def update
    if @level.update(level_params)
      @level.skill.update_progression
      render json: { success: true }
    else
      render json: { success: false, errors: @level.errors.full_messages }
    end
  end

  private

  def set_level
    @level = Level.find(params[:id])
  end

  def level_params
    params.require(:level).permit(:name, :exercise, :completed, :skill_id)
  end
end
