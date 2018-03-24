class AddPlusMinus < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :plus, :integer
    add_column :posts, :minus, :integer
  end
end
