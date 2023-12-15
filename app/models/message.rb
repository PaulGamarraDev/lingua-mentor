class Message < ApplicationRecord
  #Assosiations
  belongs_to :chat
  belongs_to :sender, class_name: 'User'
  belongs_to :receiver, class_name: 'User'

  #Validations
  validates :content, presence: true

end
