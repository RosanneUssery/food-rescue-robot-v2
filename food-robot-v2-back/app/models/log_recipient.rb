class LogRecipient < ApplicationRecord
  belongs_to :log
  belongs_to :recipient
end
