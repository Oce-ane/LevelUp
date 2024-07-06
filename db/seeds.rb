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
  Volume: 3 Sets of 50',
  completed: false,
  skill_id: push_up.id
)
Level.create!(
  name: 'Incline push-ups',
  exercise: 'Introducing us to diagonal pushing! Start with something around sternum height. The lower the base, the harder this exercise becomes. Lower yourself until your chest gently touches the base. Your hands should be around sternum height by your ribs at the bottom of the movement.
  Volume: 3 Sets of 40',
  completed: false,
  skill_id: push_up.id
)
Level.create!(
  name: 'Advanced incline push-ups',
  exercise: 'Using a lower base prepares our body for horizontal pushing! Start with something around hip height. The lower the base, the harder this exercise becomes. Lower yourself until your chest gently touches the base. Your hands should be by your ribs at the bottom of the movement.
  Volume: 3 Sets of 35',
  completed: false,
  skill_id: push_up.id
)
Level.create!(
  name: 'Knee push-ups',
  exercise: 'Finally touching ground for horizontal pushing! These are slightly easier than Full Pushups because the knees are used as a pivot instead of the feet. Start with your arms straight and knuckles beneath your shoulders. Lower smoothly until your chest gently touches the floor and your hands are by your ribs. Pause for a moment before coming back up.
  Volume: 3 Sets of 30',
  completed: false,
  skill_id: push_up.id
)
Level.create!(
  name: 'Full push-ups',
  exercise: 'The famous bodyweight pushing movement! Your body should be relatively straight from your shoulders to your toes. You don’t have to look forward. Start with your arms straight and knuckles below your shoulders. Lower smoothly until your chest touches the ground. Pause briefly before coming back up. Keep your abs braced! Don’t allow your lower back to sag.
  Volume: 3 Sets of 25',
  completed: false,
  skill_id: push_up.id
)

pull_up = Skill.create!(
  name: 'Pull-up',
  description: 'A pull-up is a bodyweight exercise where the individual lifts their body up by gripping an overhead bar and pulling until the chin is above the bar. This exercise primarily targets the latissimus dorsi (upper back), biceps brachii (front of the arms), and trapezius (upper back and neck), while also engaging the forearms, shoulders, and core muscles for stabilization. Pull-ups significantly improve upper body strength, which is beneficial for tasks such as climbing, lifting, and pulling objects. They enhance grip strength, which is useful in everyday activities like carrying bags or opening jars. Furthermore, pull-ups contribute to better posture by strengthening the back muscles, reducing the risk of back pain and improving spinal alignment. Overall, this exercise promotes functional fitness, aiding in various physical tasks and enhancing overall athletic performance.',
  progression: 0
)
Level.create!(
  name: 'Wall pull-ups',
  exercise: 'Vertical pulling is one of the gentlest ways to introduce pulling with a full range of motion. Although these may feel very easy, it’s useful to practice these for a few weeks to feel how your joints want to move and build healthy movement patterns.
  Volume: 3 Sets of 50',
  completed: false,
  skill_id: pull_up.id
)
Level.create!(
  name: 'Horizontal pull-ups',
  exercise: 'Doing pullups from this position is easier than pulling vertically. This introduces us to horizontal pulling.
  Volume: 3 Sets of 30',
  completed: false,
  skill_id: pull_up.id
)
Level.create!(
  name: 'Advanced horizontal pull-ups',
  exercise: 'Pulling from a lower position makes horizontal pullups harder. This will improve the muscle mass involved in pull-ups.
  Volume: 3 Sets of 25',
  completed: false,
  skill_id: pull_up.id
)
Level.create!(
  name: 'Jack-knife pull-ups',
  exercise: 'This introduces vertical pulling with assistance from the legs. This is still easier than a full pull-ups but still a valuable exercise.
  Volume: 3 Sets of 20',
  completed: false,
  skill_id: pull_up.id
)
Level.create!(
  name: 'Full pull-ups',
  exercise: 'Another calisthenics Volume! This is one of the most functional fitness movements. Period.
  Congratulations if you make it here.
  Volume: 3 Sets of 12',
  completed: false,
  skill_id: pull_up.id
)

handstand = Skill.create!(
  name: 'Handstand',
  description: 'A handstand is an advanced bodyweight exercise performed by balancing the body in an inverted vertical position, supported by the hands. This exercise primarily targets the deltoids (shoulders), triceps brachii (back of the arms), and the muscles of the forearms and wrists, while also engaging the core muscles, including the rectus abdominis and obliques, as well as the muscles of the lower back and legs for stabilization. Handstands improve upper body strength and enhance balance and coordination, which are beneficial for overall body control and athletic performance. Practicing handstands increases spatial awareness and promotes a strong, stable core, which helps with posture and reduces the risk of back injuries. Additionally, handstands contribute to functional fitness, enhancing the ability to perform various physical activities and improving overall body alignment and stability.',
  progression: 0
)
Level.create!(
  name: 'L-handstand at wall',
  exercise: 'Stand with your back to a wall. Bending forward at the waist, position your hands on the floor in front of you exactly shoulder width apart. Your hands should be a leg length away from the wall. Spread your fingers and press your palms flat on the ground. Walk your feet up the wall until your legs are parallel to the floor—this will center your hips over your body. Be mindful that your hands, wrists, elbows, and shoulders are all in line on each side. Hold the pose for 20 seconds to a minute or as long as you can maintain good form. As soon as you start to shake or lose proper form, walk your feet back down the wall and rest. Make the exercise harder by aiming one leg at a time toward the ceiling.
  Volume: 5-7 reps. If you cannot hold the position for 30 seconds at a time, break it down into shorter durations, such as three ten-second holds with a short rest between each, until you build up the endurance.',
  completed: false,
  skill_id: handstand.id
)
Level.create!(
  name: 'Wall Kick-Ups',
  exercise: 'Continue to build arm and core strength as you practice entering a handstand without the risk of flipping over backwards. From a standing forward bend, place your palms flat on the ground, shoulder width apart, roughly six or more inches away from a wall. Check to ensure your arms form a straight line. Raise one leg in the air, then hop with the other to launch your feet straight overhead. Lightly tap the wall with your heel, then return your feet to the ground for one Volume. Repeat, and switch the hopping leg every set.
  Volume: 3-4 sets of 10 reps',
  completed: false,
  skill_id: handstand.id
)
Level.create!(
  name: 'Crane (Crow) Pose',
  exercise: 'Trains balance on your hands, while continuing to improve body awareness and arm and core strength. Squat with your feet a few inches apart and your palms pressed flat on the floor, directly below your shoulders. Position your knees just wider than your hips, and press them into your upper arms as high you can. Stand up on your toes, and lean forward to place the weight of your torso on your upper arms (through your knees). Continue leaning forward until your feet leave the ground. Find your balance, and hold for 20 seconds to a minute or as long as you can. Slowly tip back into a squat to get out of the pose. It’s OK to keep your elbows bent and focus only on balance, but to perfect your form, work toward straightening your arms.
  Volume: 5-7 reps',
  completed: false,
  skill_id: handstand.id
)
Level.create!(
  name: 'Handstand with Wall',
  exercise: 'Allows you to practice a handstand without the fear of flipping over backwards.
  Start this as you would for wall kick-ups. From a standing forward bend, place your palms flat on the ground, shoulder width apart, one to two feet away from a wall. Check to ensure your arms form a straight line. Raise one leg in the air, then hop with the other to push your legs overhead, but try not to touch the wall. Find your center point of balance, and hold there for as long as you can.
  If you feel like you’re going to fall backwards, slowly bend one of your legs and use the wall for support. You might need to use the wall frequently when you first start, but attempt to use it less and less until you’re comfortable without it.
  Volume: Practice daily until you’re comfortable without the wall.',
  completed: false,
  skill_id: handstand.id
)
Level.create!(
  name: 'Full Handstand',
  exercise: 'Improves upper-body and core strength, balance, body awareness, deep breathing, and focus.
  Get in the position for a standing forward bend. Plant your palms firmly on ground, exactly shoulder width apart so that your hands, wrists, elbows, and shoulders are all aligned. Spread out your fingers to create a stable base. Raise one leg in the air, then take progressively larger hops with the other to eventually position your hips directly over your shoulders. Keep your legs split, and use micro adjustments to find a central balance point. Once settled, slowly bring your legs together until they’re both overhead and pointing toward the sky. Think of a handstand as stacking your body upside down, then moving toward midline. Move slowly, and breathe. Jerky movements are more difficult to control if you begin leaning too far in one direction and can cause you to overcorrect.
  Volume: Practice daily.',
  completed: false,
  skill_id: handstand.id
)

squat = Skill.create!(
  name: 'Squat',
  description: 'A squat is a fundamental bodyweight exercise performed by lowering the hips from a standing position and then returning to standing. This exercise primarily targets the quadriceps (front of the thighs), hamstrings (back of the thighs), gluteus maximus (buttocks), and calves, while also engaging the core muscles for stability. Squats improve lower body strength, which is essential for tasks such as lifting heavy objects, climbing stairs, and standing up from a seated position. They enhance overall balance and mobility, reducing the risk of falls and injuries. Additionally, squats promote better posture and spinal health by strengthening the muscles that support the lower back. This exercise contributes to functional fitness, making everyday activities easier and more efficient, from walking and running to lifting and carrying items.',
  progression: 0
)
Level.create!(
  name: 'Jack-knife squats',
  exercise: 'AThe ability to get off the ground is fundamental to survival and mobility! We can start building this ability by assisting with our arms - even if this means assisting heavily at first.
  Volume: 3 Sets of 35',
  completed: false,
  skill_id: squat.id
)
Level.create!(
  name: 'Jack-knife squats',
  exercise: 'The ability to get off the ground is fundamental to survival and mobility! We can start building this ability by assisting with our arms - even if this means assisting heavily at first.
  Volume: 3 Sets of 35',
  completed: false,
  skill_id: squat.id
)
Level.create!(
  name: 'Assisted squats',
  exercise: 'This exercise continues where Jackknife Squats left off. The key difference is the increased height of the assisting platform. Users should feel like they’re “pulling” themselves up at the bottom, rather than pressing.
  Volume: 3 Sets of 30',
  completed: false,
  skill_id: squat.id
)
Level.create!(
  name: 'Half squats',
  exercise: 'This is the first step where we are squatting our entire bodyweight without assistance! However, we are stronger in the upper half of our range, and this exercise takes advantage of that.
  Volume: 2 Sets of 50',
  completed: false,
  skill_id: squat.id
)
Level.create!(
  name: 'Full squats',
  exercise: 'This is another calisthenics staple! Being able to get up off the floor without the assistance from your arms is important to survival and overall mobility! Not only this, but the full range of motion will keep the tendons and ligaments of your ankles, hips, and knees strong and healthy for years to come.
  Volume: 2 Sets of 30',
  completed: false,
  skill_id: squat.id
)

split = Skill.create!(
  name: 'Split',
  description: 'A split is a flexibility exercise where the legs are extended in opposite directions, either front-to-back (front split) or side-to-side (side split), resulting in a position where the hips are fully opened and the legs form a straight line. This exercise primarily targets the hamstrings (back of the thighs), hip flexors, adductors (inner thighs), and gluteus muscles, while also engaging the muscles around the hips and lower back for stabilization. Splits significantly improve flexibility and range of motion in the hips and legs, which is beneficial for various physical activities, including dancing, gymnastics, martial arts, and general fitness. They help in preventing injuries by stretching and lengthening the muscles, reducing muscle tightness, and improving circulation. Additionally, practicing splits enhances overall body awareness and control, contributing to better posture and alignment in everyday activities.',
  progression: 0
)
Level.create!(
  name: 'Seated Forward Bend',
  exercise: 'Improves hamstring and lower back flexibility, preparing the body for more intense stretching.
  Sit on the floor with your legs extended straight in front of you. Flex your feet and reach forward with your hands, trying to touch your toes. Keep your back straight and avoid rounding your shoulders. Hold the position for 30 seconds to 1 minute.
  Volume: 3 sets',
  completed: false,
  skill_id: split.id
)
Level.create!(
  name: 'Standing Hamstring Stretch',
  exercise: 'Stretches the hamstrings and prepares the body for deeper stretches.
  Stand with your feet hip-width apart. Bend forward at the hips and reach for your toes, keeping your legs straight. Hold the stretch for 30 seconds to 1 minute.
  Volume: 3 sets',
  completed: false,
  skill_id: split.id
)
Level.create!(
  name: 'Lunge Stretch',
  exercise: 'Stretches the hip flexors and quadriceps, important for performing splits.
  Start in a standing position. Step one foot forward and lower your hips into a lunge position. Keep your front knee at a 90-degree angle and your back leg straight. Hold the stretch for 30 seconds to 1 minute, then switch legs.
  Volume: 3 sets on each side',
  completed: false,
  skill_id: split.id
)
Level.create!(
  name: 'Pigeon Pose',
  exercise: 'Stretches the hip flexors, glutes, and lower back, aiding in achieving splits.
  Start in a kneeling position. Bring your right knee forward and place it behind your right wrist. Extend your left leg straight back behind you. Lower your hips towards the floor and lean forward, placing your hands or forearms on the ground. Hold the stretch for 30 seconds to 1 minute, then switch sides.
  Volume: 3 sets on each side',
  completed: false,
  skill_id: split.id
)
Level.create!(
  name: 'Half Split',
  exercise: 'A deeper stretch targeting the hamstrings and hip flexors, closer to a full split.
  Start in a kneeling position. Extend one leg straight in front of you while keeping the other leg bent with the knee on the ground. Lean forward, reaching for your toes. Hold the stretch for 30 seconds to 1 minute, then switch sides.
  Volume: 3 sets on each side',
  completed: false,
  skill_id: split.id
)
Level.create!(
  name: 'Full Split',
  exercise: 'The ultimate goal, achieving a full split either front-to-back or side-to-side.
  From a kneeling position, extend one leg straight in front and the other leg straight back, lowering your hips towards the ground. For a side split, extend both legs to the sides, lowering your hips towards the ground. Hold the position for 30 seconds to 1 minute.
  Volume: Practice daily until comfortable holding the position.',
  completed: false,
  skill_id: split.id
)

puts 'Finished'
