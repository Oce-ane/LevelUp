class ReminderMailer < ApplicationMailer
  default from: 'no-reply@levelup.com'

  def daily_reminder(user)
    @user = user
    mail(to: @user.email, subject: 'Daily Exercise Reminder')
  end
end
