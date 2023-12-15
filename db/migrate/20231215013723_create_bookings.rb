class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.integer :teaching_language_session_id
      t.date :date
      t.time :time_in

      t.timestamps
    end
  end
end
