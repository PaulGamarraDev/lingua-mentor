class CreatePayments < ActiveRecord::Migration[7.1]
  def change
    create_table :payments do |t|
      t.integer :booking_id
      t.text :success_url
      t.text :cancel_url

      t.timestamps
    end
  end
end
