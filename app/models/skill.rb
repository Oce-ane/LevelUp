class Skill < ApplicationRecord
  has_many :levels
  has_many :user_skills
  has_many :users, through: :user_skills

  validates :name, presence: true, uniqueness: true, inclusion: { in: %w[Push-up Pull-up Split l-sit Squat Handstand] }
  validates :description, presence: true, uniqueness: true
  validates :progression, presence: true

  def update_progression
    total_levels = levels.count
    completed_levels = levels.where(completed: true).count
    progression = (completed_levels.to_f / total_levels * 100).round
    update(progression: progression)
  end
end
