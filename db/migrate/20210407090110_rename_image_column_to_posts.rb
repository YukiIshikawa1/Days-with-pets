class RenameImageColumnToPosts < ActiveRecord::Migration[5.2]
  def change
    rename_column :posts, :image, :post_image_id
  end
end
