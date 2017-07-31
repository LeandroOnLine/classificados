# home controller
class HomeController < ApplicationController
  def index
    search_name = params[:search_name] if params[:search_name]
    selected_category = params[:category] if params[:category]
    page = params[:page] if params[:page]

    @search_name = search_name

    set_category
    if !search_name.nil? && !search_name.empty?
      @announcements = Announcement.where('UPPER(title) like UPPER(?) AND
        category_id = ?', "%#{search_name.upcase}%", "#{selected_category}")
                                   .paginate(page: page, per_page: 5)
    else
      @announcements = Announcement.order('created_at DESC')
                                   .paginate(page: page, per_page: 5)
    end
  end

  private

  def set_category
    @categories = Category.all
  end
end
