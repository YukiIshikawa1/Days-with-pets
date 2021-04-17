class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.references :user, foreign_key: true
      t.references :genre, foreign_key: true
      t.string :name,    null: false
      t.string :image,   null: false
      t.integer :gender, null: false
      t.string :age,     null: false

      t.timestamps
    end
  end
end
