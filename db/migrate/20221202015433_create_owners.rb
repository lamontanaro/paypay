class CreateOwners < ActiveRecord::Migration[7.0]
  def change
    create_table :owners do |t|
      t.string :name
      t.string :surname
      t.string :email
      t.string :address
      t.string :phone

      t.timestamps
    end
  end
end
