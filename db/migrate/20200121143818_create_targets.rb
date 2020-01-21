class CreateTargets < ActiveRecord::Migration[6.0]
  def change
    create_table :targets do |t|
      t.string :name
      t.string :planet
      t.string :species
      t.string :TagLine

      t.timestamps
    end
  end
end
