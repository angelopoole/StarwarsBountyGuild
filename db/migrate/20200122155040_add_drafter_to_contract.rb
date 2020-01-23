class AddDrafterToContract < ActiveRecord::Migration[6.0]
  def change
    remove_column :contracts, :drafter, :string
  end
end
