class CreateHunters < ActiveRecord::Migration[6.0]
  def change
    create_table :hunters do |t|
      t.string :name
      t.string :ActiveBounties
      t.string :planet
      t.string :species
      t.string :TagLine

      t.timestamps
    end
  end
end
