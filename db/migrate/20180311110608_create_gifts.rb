class CreateGifts < ActiveRecord::Migration[5.0]
  def change
    create_table :gifts do |t|
      t.string :name
      t.integer :count
      t.references :users
      t.references :events
      t.timestamps
    end
  end
end
