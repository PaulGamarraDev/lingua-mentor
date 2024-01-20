class Review < ApplicationRecord
  belongs_to :user
  belongs_to :recipient, foreign_key: :recipient_id, class_name: 'User'

  #VALIDATIONS
  #el_que_escribe_reseña_id es user_id
  #el_que_recibe_reseña_id es recipient_id
  #uniqueness porque user_id TIENE QUE SER DIFERENTE A recipient_id
  validates :user_id, uniqueness: { scope: :recipients_id }
end
