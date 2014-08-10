class CreateBags < ActiveRecord::Migration
  def change
    create_table :bags do |t|
      t.string :bagname
      t.text :description
      t.timestamps
    end
  end
end
