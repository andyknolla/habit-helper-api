# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create( { first_name: 'andy', last_name: 'K'})

User.create( {first_name: 'Akmed', last_name: 'dirka'})

Habit.create( {title: 'title 1', description: 'description 1', why: 'why why why', user_id: 1, habit_type: 'good', criteria: 'do it right'} )

Habit.create!( {title: 'title 2', description: 'description 2', why: 'Because', user_id: 1, habit_type: 'bad', criteria: 'Do all the things'} )

Day.create!({ date_string: '09-28-2017'})
Day.create!({ date_string: '09-29-2017'})
Day.create!({ date_string: '09-27-2017'})

DayHabit.create!({ habit_id:1, day_id:1})
DayHabit.create!({ habit_id:2, day_id:1})
