class AddGuestCountToGroup < ActiveRecord::Migration
  def change
    add_column :groups, :guest_count, :integer
  end
end
