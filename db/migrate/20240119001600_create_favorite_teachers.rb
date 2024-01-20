class CreateFavoriteTeachers < ActiveRecord::Migration[7.1]
  def change
    create_table :favorite_teachers do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :teacher_id

      t.timestamps
    end
  end
end