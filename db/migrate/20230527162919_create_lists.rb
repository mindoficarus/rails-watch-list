class CreateLists < ActiveRecord::Migration[7.0]
  def change
    create_table :lists do |t|
      t.text :name
      t.references :movie, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end
