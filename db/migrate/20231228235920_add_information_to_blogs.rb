class AddInformationToBlogs < ActiveRecord::Migration[7.1]
  def change
    add_column :blogs, :tips, :text
    add_column :blogs, :description, :text
    add_column :blogs, :introduction, :text
    add_column :blogs, :first_subtitle, :string
    add_column :blogs, :second_subtitle, :string
    add_column :blogs, :third_subtitle, :string
    add_column :blogs, :fourth_subtitle, :string
    add_column :blogs, :fifth_subtitle, :string
  end
end
