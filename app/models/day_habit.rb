class DayHabit < ApplicationRecord
  belongs_to :habits
  belongs_to :day 
end
