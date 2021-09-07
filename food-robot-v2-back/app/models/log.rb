class Log < ApplicationRecord
  belongs_to :donor
  belongs_to :transport_type
  belongs_to :region
  belongs_to :scale_type
  belongs_to :schedule_chain
end
