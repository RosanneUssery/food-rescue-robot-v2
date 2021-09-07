class Volunteer < ApplicationRecord
  belongs_to :transport_type
  belongs_to :cell_carrier
  belongs_to :requested_region
end
