class ReminderJob
  include Sidekiq::Job

  def perform(user_id)
    user = User.find(user_id)
    ReminderMailer.daily_reminder(user).deliver_now
  end
end
