class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #ASSOCIATIONS
  has_many :bookings
  has_many :teaching_language_sessions
  has_one :data_teacher

  #CLOUDINARY
  # has_one_attached :photo
  has_one_attached :profile_photo
  has_one_attached :banner_image
  has_many_attached :photo_album

  #VALIDATIONS
  validates :email, :role,  presence: true
  #:first_name, :last_name, :country, :city,
  #:date_of_birth, :about_me, :native_language, :other_language, :learning_language, :objectives
  validates :email, uniqueness: true

  #ROLES (student by default)
  enum role: {
    student: 0,
    teacher: 1
  }

  #SEARCH FEATURE
  include PgSearch::Model
  pg_search_scope :search_by_name_location_and_languages,
    against: [ :first_name, :last_name, :country, :city, :native_language, :other_languages, :learning_languages ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }

  after_initialize :set_default_role, if: :new_record?

  #METHODS
  def set_default_role
    self.role ||= :student
  end

end
