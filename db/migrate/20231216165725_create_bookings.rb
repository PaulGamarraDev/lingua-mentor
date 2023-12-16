class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.date :date
      t.time :time_in
      t.references :user, null: false, foreign_key: true
      t.references :teaching_language_session, null: false, foreign_key: true

      t.timestamps
    end
  end
end
