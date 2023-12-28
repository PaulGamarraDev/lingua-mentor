class Blog < ApplicationRecord
  #CLOUDINARY
  has_many_attached :photo_articles

  #VALIDATIONS
  validates :title, :first_paragraph, presence: true
end
