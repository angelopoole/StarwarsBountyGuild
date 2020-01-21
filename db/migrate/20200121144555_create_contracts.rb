class CreateContracts < ActiveRecord::Migration[6.0]
  def change
    create_table :contracts do |t|
      t.string :OrganizationName
      t.string :ContractPrice
      t.integer :target_id
      t.integer :hunter_id
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
