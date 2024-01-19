class FavoriteTeacher < ApplicationRecord
  belongs_to :user
  belongs_to :teacher, foreign_key: :teacher_id,  class_name: 'User'

  #VALIDATIONS
  #uniqueness porque user_id TIENE QUE SER DIFERENTE A teacher_id
  validates :user_id, uniqueness: { scope: :teacher_id }
end
