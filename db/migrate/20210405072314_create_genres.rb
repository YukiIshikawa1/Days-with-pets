class CreateGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :genres do |t|
      t.string :animal_type,null: false
      t.string :type,        null: false

      t.timestamps
    end
  end
end
