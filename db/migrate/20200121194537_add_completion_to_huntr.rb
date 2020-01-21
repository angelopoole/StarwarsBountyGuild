class AddCompletionToHuntr < ActiveRecord::Migration[6.0]
  def change
    add_column :hunters, :contracts_completed, :integer
    add_column :hunters, :contracts_failed, :integer
  end
end
