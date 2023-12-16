class AddIndexToDataTeachers < ActiveRecord::Migration[7.1]
  def change
    add_index :data_teachers, :user_id
  end
end
