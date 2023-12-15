class TeachingLanguageSession < ApplicationRecord
  #Assosiations
  belongs_to :user
  has_many :bookings

  #Validations
end
