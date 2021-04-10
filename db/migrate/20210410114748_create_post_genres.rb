class CreatePostGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :post_genres do |t|
      t.references :post,index: true, foreign_key: { on_delete: :cascade }
      t.references :genre,index: true, foreign_key: { on_delete: :cascade }

      t.timestamps
    end
      add_index :post_genres, [:post_id, :genre_id], unique: true
  end
end
