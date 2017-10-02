class DayHabit < ApplicationRecord
  belongs_to :habit, optional: true
  belongs_to :day
end
