class CreateMessages < ActiveRecord::Migration[7.1]
  def change
    create_table :messages do |t|
      t.text :content
      t.integer :chat_id
      t.integer :sender_id
      t.integer :receiver_id
      t.date :created_on

      t.timestamps
    end
  end
end
