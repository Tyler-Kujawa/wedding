class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.text :comments
      t.string :email
      t.boolean :attending

      t.timestamps
    end
  end
end
