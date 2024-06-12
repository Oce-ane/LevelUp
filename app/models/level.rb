class Level < ApplicationRecord
  belongs_to :skill

  validates :name, presence: true
  validates :exercise, presence: true, uniqueness: true

  after_save :update_skill_progression, if: :saved_change_to_completed?

  private

  def update_skill_progression
    skill.update_progression
  end
end
