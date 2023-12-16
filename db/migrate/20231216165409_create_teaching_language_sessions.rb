class CreateTeachingLanguageSessions < ActiveRecord::Migration[7.1]
  def change
    create_table :teaching_language_sessions do |t|
      t.text :language
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
