class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.string :fname
      t.string :lname

      t.timestamps null: false
    end
  end
end
