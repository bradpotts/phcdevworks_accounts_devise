class Website::PagesController < ApplicationController

  # Filters & Security
  before_action :authenticate_user!

  # Website Pages
  def index
  end

end
