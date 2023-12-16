class CreateDataTeachers < ActiveRecord::Migration[7.1]
  def change
    create_table :data_teachers do |t|
      t.text :teaching_languages
      t.text :teacher_description
      t.integer :usd_per_hour
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
