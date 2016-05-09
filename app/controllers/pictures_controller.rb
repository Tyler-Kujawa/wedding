class PicturesController < ApplicationController
	before_action :go_away_hacker, only: [:edit, :update, :destroy]

  def homepage
    @group = Group.new
    @group.rsvps.build
  end

  def index
  end

  def show
  end

  def go_away_hacker
  	redirect_to root_path
  end
end
