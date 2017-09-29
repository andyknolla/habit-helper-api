class User < ApplicationRecord
  has_many :habits, dependent: :destroy
  has_many :day_habits, through: :habits
end
