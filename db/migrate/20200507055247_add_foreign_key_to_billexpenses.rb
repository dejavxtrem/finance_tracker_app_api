class AddForeignKeyToBillexpenses < ActiveRecord::Migration[6.0]
  def change
    add_column :billexpenses, :user_id, :integer
  end
end
