class Message < ApplicationRecord
  #ASSOCIATIONS
  belongs_to :user
  belongs_to :chatroom

  #VALIDATIONS
  validates :content, :user_id, :chatroom_id, presence: true
end
