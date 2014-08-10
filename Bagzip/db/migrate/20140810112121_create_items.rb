class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :icon
      t.string :category
      t.timestamps
    end
  end
end
