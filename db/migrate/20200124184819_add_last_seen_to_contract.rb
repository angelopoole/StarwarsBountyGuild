class AddLastSeenToContract < ActiveRecord::Migration[6.0]
  def change
    add_column :contracts, :last_seen, :string
    add_column :contracts, :species, :string
  end
end
