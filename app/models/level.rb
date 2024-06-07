class Level < ApplicationRecord
  belongs_to :skill

  validates :name, presence: true
  validates :exercise, presence: true, uniqueness: true
end
