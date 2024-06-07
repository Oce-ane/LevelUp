# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts 'Cleaning database'
Level.destroy_all
Skill.destroy_all

puts 'Creating skills and their levels'
push_up = Skill.create!(
  name: 'Push-up',
  description: 'A push-up is a bodyweight exercise performed in a prone position by raising and lowering the body using the arms. This exercise primarily targets the pectoralis major (chest), triceps brachii (back of the arms), and deltoids (shoulders), while also engaging the core muscles, including the rectus abdominis and obliques, as well as the serratus anterior and lower back muscles. Push-ups improve upper body strength, enhancing the ability to perform various physical tasks such as pushing open heavy doors or lifting objects. They also strengthen the core, improving balance and stability, which helps in maintaining good posture and preventing injuries. Additionally, push-ups increase the ability to catch oneself and stabilize when tripping or falling forward, reducing the risk of injury, and improve overall functional fitness, making everyday activities easier and more efficient, from carrying groceries to playing with children.',
  progression: 0
)
Level.create!(
  name: 'Wall push-ups',
  exercise: 'A classic, gentle pushing movement! Hands slightly below shoulder height. Wrists should feel slightly stretched when arms fully extended. Stand about arms-length away from the wall.
  Standard: 3 Sets of 50',
  completed: false,
  skill_id: push_up.id
)
Level.create!(
  name: 'Incline push-ups',
  exercise: 'Introducing us to diagonal pushing! Start with something around sternum height. The lower the base, the harder this exercise becomes. Lower yourself until your chest gently touches the base. Your hands should be around sternum height by your ribs at the bottom of the movement.
  Standard: 3 Sets of 40',
  completed: false,
  skill_id: push_up.id
)
Level.create!(
  name: 'Advanced incline push-ups',
  exercise: 'Using a lower base prepares our body for horizontal pushing! Start with something around hip height. The lower the base, the harder this exercise becomes. Lower yourself until your chest gently touches the base. Your hands should be by your ribs at the bottom of the movement.
  Standard: 3 Sets of 35',
  completed: false,
  skill_id: push_up.id
)
Level.create!(
  name: 'Knee push-ups',
  exercise: 'Finally touching ground for horizontal pushing! These are slightly easier than Full Pushups because the knees are used as a pivot instead of the feet. Start with your arms straight and knuckles beneath your shoulders. Lower smoothly until your chest gently touches the floor and your hands are by your ribs. Pause for a moment before coming back up.
  Standard: 3 Sets of 30',
  completed: false,
  skill_id: push_up.id
)
Level.create!(
  name: 'Full push-ups',
  exercise: 'The famous bodyweight pushing movement! Your body should be relatively straight from your shoulders to your toes. You don’t have to look forward. Start with your arms straight and knuckles below your shoulders. Lower smoothly until your chest touches the ground. Pause briefly before coming back up. Keep your abs braced! Don’t allow your lower back to sag.
  Standard: 3 Sets of 25',
  completed: false,
  skill_id: push_up.id
)

Skill.create!(
  name: 'Pull-up',
  description: 'A pull-up is a bodyweight exercise where the individual lifts their body up by gripping an overhead bar and pulling until the chin is above the bar. This exercise primarily targets the latissimus dorsi (upper back), biceps brachii (front of the arms), and trapezius (upper back and neck), while also engaging the forearms, shoulders, and core muscles for stabilization. Pull-ups significantly improve upper body strength, which is beneficial for tasks such as climbing, lifting, and pulling objects. They enhance grip strength, which is useful in everyday activities like carrying bags or opening jars. Furthermore, pull-ups contribute to better posture by strengthening the back muscles, reducing the risk of back pain and improving spinal alignment. Overall, this exercise promotes functional fitness, aiding in various physical tasks and enhancing overall athletic performance.',
  progression: 0
)

Skill.create!(
  name: 'Handstand',
  description: 'A handstand is an advanced bodyweight exercise performed by balancing the body in an inverted vertical position, supported by the hands. This exercise primarily targets the deltoids (shoulders), triceps brachii (back of the arms), and the muscles of the forearms and wrists, while also engaging the core muscles, including the rectus abdominis and obliques, as well as the muscles of the lower back and legs for stabilization. Handstands improve upper body strength and enhance balance and coordination, which are beneficial for overall body control and athletic performance. Practicing handstands increases spatial awareness and promotes a strong, stable core, which helps with posture and reduces the risk of back injuries. Additionally, handstands contribute to functional fitness, enhancing the ability to perform various physical activities and improving overall body alignment and stability.',
  progression: 0
)

Skill.create!(
  name: 'Squat',
  description: 'A squat is a fundamental bodyweight exercise performed by lowering the hips from a standing position and then returning to standing. This exercise primarily targets the quadriceps (front of the thighs), hamstrings (back of the thighs), gluteus maximus (buttocks), and calves, while also engaging the core muscles for stability. Squats improve lower body strength, which is essential for tasks such as lifting heavy objects, climbing stairs, and standing up from a seated position. They enhance overall balance and mobility, reducing the risk of falls and injuries. Additionally, squats promote better posture and spinal health by strengthening the muscles that support the lower back. This exercise contributes to functional fitness, making everyday activities easier and more efficient, from walking and running to lifting and carrying items.',
  progression: 0
)

Skill.create!(
  name: 'Split',
  description: 'A split is a flexibility exercise where the legs are extended in opposite directions, either front-to-back (front split) or side-to-side (side split), resulting in a position where the hips are fully opened and the legs form a straight line. This exercise primarily targets the hamstrings (back of the thighs), hip flexors, adductors (inner thighs), and gluteus muscles, while also engaging the muscles around the hips and lower back for stabilization. Splits significantly improve flexibility and range of motion in the hips and legs, which is beneficial for various physical activities, including dancing, gymnastics, martial arts, and general fitness. They help in preventing injuries by stretching and lengthening the muscles, reducing muscle tightness, and improving circulation. Additionally, practicing splits enhances overall body awareness and control, contributing to better posture and alignment in everyday activities.',
  progression: 0
)

puts 'Finished'
