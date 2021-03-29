class Task < ApplicationRecord
  belongs_to :day_pack
  has_one :activitiy, dependent: :destroy
end
