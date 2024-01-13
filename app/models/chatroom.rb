class Chatroom < ApplicationRecord
  #VALIDATIONS
  validates :name,  uniqueness: true

end
