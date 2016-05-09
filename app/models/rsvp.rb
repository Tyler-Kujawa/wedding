class Rsvp < ActiveRecord::Base
	belongs_to :group

	validates :name, presence: true
end
