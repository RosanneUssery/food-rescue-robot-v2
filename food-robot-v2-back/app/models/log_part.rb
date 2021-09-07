class LogPart < ApplicationRecord
  belongs_to :log
  belongs_to :food_type
end
