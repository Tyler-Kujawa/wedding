class Group < ActiveRecord::Base
	has_many :rsvps, dependent: :destroy
	accepts_nested_attributes_for :rsvps, reject_if: lambda { |attributes| attributes["name"].blank?}, allow_destroy: true

	validates :email, presence: true


end