class CreateContracts < ActiveRecord::Migration[6.0]
  def change
    create_table :contracts do |t|
      t.string :name
      t.integer :BountyAmount

      t.timestamps
    end
  end
end
