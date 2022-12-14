class CreatePayment < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.integer :month
      t.boolean :status
      t.references :lote, null: false, foreign_key: true

      t.timestamps
    end
  end
end
