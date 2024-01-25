class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :teaching_language_session
  attr_accessor :teacher_name

    #ROLES (status de booking)
    enum booking_status: {
      pending: 0,
      approved: 1,
      rejected: 2
    }

  after_initialize :set_default_booking_status, if: :new_record?

  #METHODS
  def set_default_booking_status
    self.booking_status ||= :pending
  end

end
