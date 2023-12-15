class AddFieldsToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :role, :integer
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :country, :text
    add_column :users, :city, :text
    add_column :users, :date_of_birth, :date
    add_column :users, :about_me, :text
    add_column :users, :native_language, :string
    add_column :users, :other_languages, :text
    add_column :users, :learning_languages, :text
    add_column :users, :objectives, :text
  end
end
