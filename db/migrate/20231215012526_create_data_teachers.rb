class CreateDataTeachers < ActiveRecord::Migration[7.1]
  def change
    create_table :data_teachers do |t|
      t.text :teaching_languages
      t.text :teacher_description
      t.integer :time_availability
      t.integer :usd_per_hour

      t.timestamps
    end
  end
end
