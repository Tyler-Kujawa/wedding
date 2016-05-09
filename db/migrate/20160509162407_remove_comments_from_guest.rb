class RemoveCommentsFromGuest < ActiveRecord::Migration
  def change
    remove_column :rsvps, :comments, :string
  end
end
