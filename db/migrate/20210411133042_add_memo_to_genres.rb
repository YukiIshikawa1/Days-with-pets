class AddMemoToGenres < ActiveRecord::Migration[5.2]
  def change
    add_column :genres, :category_id, :string
  end
end
