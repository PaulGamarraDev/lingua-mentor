class Booking < ApplicationRecord
  #Assosiations
  belongs_to :user
  belongs_to :teaching_language_session
  has_one :payment

  #Validations
  validates :date, :time_in, presence: true
  
end
