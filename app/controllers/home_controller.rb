class HomeController < ApplicationController
  
  def index
    @announcements = Announcement.order("created_at DESC").limit 5
    @categories = Category.all
  end  
  
end