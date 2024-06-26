class SkillsController < ApplicationController
  before_action :authenticate_user!

  def index
    @all_skills = Skill.all
    @selected_skills = current_user.skills
    @selected_skill_ids = @selected_skills.pluck(:id)
  end

  def show
    @skill = Skill.find(params[:id])
  end
end
