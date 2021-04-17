class CreateGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :genres do |t|
      t.references :user, foreign_key: true
      t.string :animal_type,null: false

      t.timestamps
    end
  end
end
