class Payment < ApplicationRecord
  #Assosiations
  belongs_to :booking
  #Validations
  validates :success_url, :cancel_url, presence: true
end
