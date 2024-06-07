class LevelsController < ApplicationController
  def index
    @levels = Level.all
  end

  def update
    @level = Level.find(params[:id])
    @level.update(level_params)
  end

  private

  def level_params
    params.require(:level).permit(:name, :exercise, :completed, :skill_id)
  end
end
