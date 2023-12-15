class DataTeacher < ApplicationRecord
  #Assosiations
  belongs_to :user

  #Validations
  validates :teaching_languages, :teacher_description, :time_availability, :usd_per_hour, presence: true
  
end
