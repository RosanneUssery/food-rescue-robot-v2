class SchedulePart < ApplicationRecord
  belongs_to :schedule
  belongs_to :food_type
end
