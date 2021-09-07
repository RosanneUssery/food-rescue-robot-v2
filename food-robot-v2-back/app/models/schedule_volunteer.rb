class ScheduleVolunteer < ApplicationRecord
  belongs_to :volunteer
  belongs_to :schedule_chain
end
