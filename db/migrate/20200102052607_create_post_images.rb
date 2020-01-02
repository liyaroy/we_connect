class CreatePostImages < ActiveRecord::Migration[5.2]
  def change
    create_table :post_images do |t|
    	t.string :image
    	t.references :post

      t.timestamps
    end
  end
end
