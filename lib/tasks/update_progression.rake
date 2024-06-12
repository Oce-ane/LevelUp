namespace :update do
  desc "Update progression for all skills"
  task progression: :environment do
    Skill.find_each do |skill|
      skill.update_progression
    end
  end
end
