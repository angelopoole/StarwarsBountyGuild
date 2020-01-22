class AddDrafterToContractRedux < ActiveRecord::Migration[6.0]
  def change
    add_column :contracts, :drafter, :string
  end
end
