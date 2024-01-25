class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  scope :all_except, -> (user) { where.not(id:user) }

  #ASSOCIATIONS
  has_many :bookings
  has_many :teaching_language_sessions
  has_one :data_teacher
  has_many :chatrooms, foreign_key: :sender_id, class_name: 'User'
  has_many :reviews, foreign_key: :recipient_id, class_name: 'User'
  has_many :favorite_teachers, foreign_key: :teacher_id, class_name: 'User'

  #CLOUDINARY
  # has_one_attached :photo
  has_one_attached :profile_photo
  has_one_attached :banner_image
  has_many_attached :photo_album

  #VALIDATIONS
  validates :email, :role,  presence: true
  #:first_name, :last_name, :country, :city,
  #:date_of_birth, :about_me, :native_language, :other_languages, :learning_language, :objectives
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
