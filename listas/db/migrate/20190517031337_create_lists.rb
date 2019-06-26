class CreateLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|
      t.string :name
      t.string :image
      t.integer :user_id
      t.string :email
      t.timestamps
    end
  end
end
