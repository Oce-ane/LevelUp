class Skill < ApplicationRecord
  has_many :levels

  validates :name, presence: true, uniqueness: true, inclusion: { in: %w[Push-up Pull-up Split l-sit Squat Handstand] }
  validates :description, presence: true, uniqueness: true
  validates :progression, presence: true
end
