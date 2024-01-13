class AddRecipientIdToChatrooms < ActiveRecord::Migration[7.1]
  def change
    add_column :chatrooms, :recipient_id, :integer
  end
end
