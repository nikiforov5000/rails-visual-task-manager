class DayPack < ApplicationRecord
  has_many :tasks, dependent: :destroy
  has_many :activities, through: :tasks
end
