class AddMemoToPets < ActiveRecord::Migration[5.2]
  def change
    add_column :pets, :category_id, :string 
  end
end
