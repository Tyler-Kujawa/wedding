class AddGuestNameToRsvp < ActiveRecord::Migration
  def change
    add_column :rsvps, :guest_name, :string
  end
end
