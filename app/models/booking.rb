class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :teaching_language_session
end
