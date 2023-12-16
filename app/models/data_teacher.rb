class DataTeacher < ApplicationRecord
  belongs_to :user

  #CLOUDINARY
  has_many_attached :photos_certfications_and_titles
end
