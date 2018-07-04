class PagesController < ApplicationController
  def index
    @profiles = User.all
  end

  def top
  end
end
