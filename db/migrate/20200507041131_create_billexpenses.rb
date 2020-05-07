class CreateBillexpenses < ActiveRecord::Migration[6.0]
  def change
    create_table :billexpenses do |t|
      t.string :billtype
      t.string :companyname
      t.decimal :amount, precision: 8, scale: 2
      t.string :due_date

      t.timestamps
    end
  end
end
