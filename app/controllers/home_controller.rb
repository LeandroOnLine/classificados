# home controller
class HomeController < ApplicationController
  def index
    @announcements = Announcement.order('created_at DESC').
    paginate(page: params[:page], per_page: 5)
    @categories = Category.all
  end
end
