class CreateRsvps < ActiveRecord::Migration
  def change
    create_table :rsvps do |t|
      t.string :name
      t.string :email
      t.string :meal
      t.text :comments
      t.boolean :attending

      t.timestamps
    end
  end
end
