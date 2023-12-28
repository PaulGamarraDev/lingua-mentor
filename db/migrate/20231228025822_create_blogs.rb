class CreateBlogs < ActiveRecord::Migration[7.1]
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :first_paragraph
      t.text :second_paragraph
      t.text :third_paragraph
      t.text :fourth_paragraph
      t.text :fifth_paragraph

      t.timestamps
    end
  end
end
