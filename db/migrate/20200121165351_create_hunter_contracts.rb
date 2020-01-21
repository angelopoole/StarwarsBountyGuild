class CreateHunterContracts < ActiveRecord::Migration[6.0]
  def change
    create_table :hunter_contracts do |t|
      t.integer :hunter_id
      t.integer :contract_id

      t.timestamps
    end
  end
end
