class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :profile_picture

  has_many :user_skills
  has_many :skills, through: :user_skills

  after_create :schedule_daily_reminder

  private

  def schedule_daily_reminder
    ReminderWorker.perform_in(24.hours, self.id)
  end
end
