class Chatroom < ApplicationRecord
  #ASSOCIATIONS
  belongs_to :sender, :foreign_key => :sender_id, class_name: 'User'
  belongs_to :recipient, :foreign_key => :recipient_id, class_name: 'User'
  has_many :messages, dependent: :destroy


  #VALIDATIONS
  validates :sender_id, uniqueness: { scope: :recipient_id }

  #ACTIVE RECORD QUERY INTERFACE
  scope :involving, -> (user) { where('chatrooms.sender_id =? OR chatrooms.recipient_id =?', user.id, user.id) }

  scope :between, -> (sender_id,recipient_id) { where('(chatrooms.sender_id = ? AND chatrooms.recipient_id = ?) OR (chatrooms.sender_id = ? AND chatrooms.recipient_id = ?)', sender_id, recipient_id, recipient_id, sender_id)}

end
