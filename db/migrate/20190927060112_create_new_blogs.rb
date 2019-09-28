class CreateNewBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :new_blogs do |t|
      t.string :title
      t.text :content
    end
  end
end
