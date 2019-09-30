class Renametalble < ActiveRecord::Migration[5.2]
  def change
    rename_table :new_blogs, :newblogs
  end
end
