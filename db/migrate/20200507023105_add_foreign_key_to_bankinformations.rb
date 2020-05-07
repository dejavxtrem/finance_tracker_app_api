class AddForeignKeyToBankinformations < ActiveRecord::Migration[6.0]
  def change
    add_column :bankinformations, :user_id, :integer
  end
end
