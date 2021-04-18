class CreatePrizes < ActiveRecord::Migration[6.1]
  def change
    create_table :prizes do |t|
      t.references :raffle, null: false, foreign_key: true
      t.string :description
      t.integer :placing
      t.references :ticket, null: true, foreign_key: true

      t.timestamps
    end
  end
end
