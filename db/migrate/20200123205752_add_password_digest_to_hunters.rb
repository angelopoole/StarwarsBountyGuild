class AddPasswordDigestToHunters < ActiveRecord::Migration[6.0]
  def change
    add_column :hunters, :password_digest, :string
  end
end
