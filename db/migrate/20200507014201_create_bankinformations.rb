class CreateBankinformations < ActiveRecord::Migration[6.0]
  def change
    create_table :bankinformations do |t|
      t.string :bankname
      t.integer :accountnumber
      t.string :routingnumber
      t.string :bankiban

      t.timestamps
    end
  end
end
