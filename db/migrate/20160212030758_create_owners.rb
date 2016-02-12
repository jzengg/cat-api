class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.string :fname
      t.string :lname
    end
  end
end
