class CreateCreditcards < ActiveRecord::Migration[6.0]
  def change
    create_table :creditcards do |t|
      t.string :creditcard_company
      t.string :merchant_name
      t.decimal :amount, precision: 8, scale: 2
      t.string :creditcard_number

      t.timestamps
    end
  end
end
