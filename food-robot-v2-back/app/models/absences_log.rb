class AbsencesLog < ApplicationRecord
  belongs_to :absence
  belongs_to :log
end
