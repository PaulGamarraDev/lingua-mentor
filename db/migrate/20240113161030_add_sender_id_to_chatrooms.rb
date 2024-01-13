class AddSenderIdToChatrooms < ActiveRecord::Migration[7.1]
  def change
    add_column :chatrooms, :sender_id, :integer
  end
end
