class Chatroom < ApplicationRecord
  #ASSOCIATIONS
  belongs_to :sender, foreign_key: :sender_id, class_name: 'User'
  belongs_to :recipient, foreign_key: :recipient_id, class_name: 'User'
  has_many :messages, dependent: :destroy


  #VALIDATIONS
  #iniciador_id y aceptador_id preguntar al chatgpt ideas
  validates :sender_id, uniqueness: { scope: :recipient_id }
  #uniqueness vinculación sender_id y recipient y viceversa

  #ACTIVE RECORD QUERY INTERFACE
  #:involving es una query para identificar los chatrooms en los que está el user(curent_user) sea como sender o recipient
  scope :involving, -> (user) {
    where(
      "chatrooms.sender_id = :user_id OR "\
      "chatrooms.recipient_id = :user_id",
      user_id: user.id
    )
  }

  scope :between, -> (sender_id,recipient_id) {
    where(
      "(chatrooms.sender_id = :sender_id AND chatrooms.recipient_id = :recipient_id) OR "\
      "(chatrooms.sender_id = :recipient_id AND chatrooms.recipient_id = :sender_id)",
      sender_id: sender_id,
      recipient_id: recipient_id
    )
  }

end
