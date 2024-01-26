class AddBookingStatusToBookings < ActiveRecord::Migration[7.1]
  def change
    add_column :bookings, :booking_status, :integer
  end
end
