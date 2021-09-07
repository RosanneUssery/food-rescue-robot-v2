class Schedule < ApplicationRecord
  belongs_to :schedule_chain
  belongs_to :location
end
