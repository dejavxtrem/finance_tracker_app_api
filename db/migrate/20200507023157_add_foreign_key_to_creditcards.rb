class AddForeignKeyToCreditcards < ActiveRecord::Migration[6.0]
  def change
    add_column :creditcards, :user_id, :integer
  end
end
