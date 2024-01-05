class Blog < ApplicationRecord
  #CLOUDINARY
  has_one_attached :banner_image
  has_many_attached :photo_album

  #VALIDATIONS
  validates :title, :first_paragraph, presence: true
end
