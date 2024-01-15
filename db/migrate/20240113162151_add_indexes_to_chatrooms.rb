class AddIndexesToChatrooms < ActiveRecord::Migration[7.1]
  def change
    add_index :chatrooms, :sender_id
    add_index :chatrooms, :recipient_id
  end
end
