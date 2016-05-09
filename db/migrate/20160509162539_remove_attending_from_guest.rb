class RemoveAttendingFromGuest < ActiveRecord::Migration
  def change
    remove_column :rsvps, :attending, :string
  end
end
