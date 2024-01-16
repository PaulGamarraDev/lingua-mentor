class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :teaching_language_session
  attr_accessor :teacher_name
end
