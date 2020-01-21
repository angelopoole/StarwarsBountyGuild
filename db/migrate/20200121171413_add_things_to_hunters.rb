class AddThingsToHunters < ActiveRecord::Migration[6.0]
  def change
    add_column :hunters, :planet, :string
    add_column :hunters, :species, :string
    add_column :hunters, :quote, :string
  end
end
