class Habit < ApplicationRecord
  belongs_to :user
  has_many :days, through: :day_habit
end
