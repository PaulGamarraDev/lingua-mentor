class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: { student: 0, teacher: 1 }
  #Assosiations
  has_many :bookings
  has_many :teaching_language_sessions
  has_many :sent_messages, foreign_key: 'sender_id', class_name: 'Message'
  has_many :received_messages, foreign_key: 'receiver_id', class_name: 'Message'
  has_one :data_teacher

  # cloudinary
  has_one_attached :photo

  #Validations
  validates :email, :role, :first_name, :last_name, :country, :city, :date_of_birth, :about_me, :native_language, :other_language, :learning_language, :objectives, presence: true
end
