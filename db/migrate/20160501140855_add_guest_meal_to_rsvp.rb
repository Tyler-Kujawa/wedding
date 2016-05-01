class AddGuestMealToRsvp < ActiveRecord::Migration
  def change
    add_column :rsvps, :guest_meal, :string
  end
end
