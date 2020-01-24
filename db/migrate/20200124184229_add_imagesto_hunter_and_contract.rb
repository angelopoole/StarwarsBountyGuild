class AddImagestoHunterAndContract < ActiveRecord::Migration[6.0]
  def change
    add_column :hunters, :image_url, :string
    add_column :contracts, :image_url, :string
  end
end
