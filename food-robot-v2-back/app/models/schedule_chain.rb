class ScheduleChain < ApplicationRecord
  belongs_to :transport_type
  belongs_to :scale_type
  belongs_to :region
end
