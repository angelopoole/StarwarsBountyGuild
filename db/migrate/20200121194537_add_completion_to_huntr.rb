class AddCompletionToHuntr < ActiveRecord::Migration[6.0]
  def change
    add_column :hunters, :contracts_completed, :integer, :default => 0
    add_column :hunters, :contracts_failed, :integer, :default => 0
  end
end
