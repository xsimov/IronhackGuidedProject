class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :city
      t.string :country
      t.datetime :from_date
      t.datetime :to_date
      t.text :description
      t.timestamps
    end
  end
end
