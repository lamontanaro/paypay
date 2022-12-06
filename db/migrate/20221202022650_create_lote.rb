class CreateLote < ActiveRecord::Migration[7.0]
  def change
    create_table :lotes do |t|
      t.integer :number
      t.references :owner, null: false, foreign_key: true

      t.timestamps
    end
  end
end
