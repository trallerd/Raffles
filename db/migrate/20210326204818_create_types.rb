class CreateTypes < ActiveRecord::Migration[6.1]
    def change
      create_table :types do |t|
        t.string :description
        t.integer :inicial_number
        t.integer :step
        t.integer :ticket_quantities
  
        t.timestamps
      end
    end
  end