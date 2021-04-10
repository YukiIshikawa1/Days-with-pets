class CreateGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :genres do |t|
      t.string :animal_type,null: false
      t.string :type,null: false
      
      t.references :post, foreign_key: true 

      t.timestamps
    end
  end
end
