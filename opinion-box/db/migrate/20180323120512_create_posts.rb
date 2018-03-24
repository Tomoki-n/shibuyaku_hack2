class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :main_text
      t.integer :language
      t.integer :category
      t.string :contact
      t.string :can_viewing
      t.string :image
      t.timestamps
    end
  end
end
