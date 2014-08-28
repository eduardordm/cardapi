class CreateCardapiTransactions < ActiveRecord::Migration
  def change
    create_table :cardapi_transactions do |t|
      t.decimal :amount
      t.string :destination
      t.string :source
      t.string :txid

      t.timestamps
    end
  end
end
