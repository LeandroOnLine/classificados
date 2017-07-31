class AnnouncementsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]
  before_action :set_announcement, only: [:show, :edit, :update, :destroy]

  # GET /announcements
  # GET /announcements.json
  def index
    search_name = params[:search_name]
    selected_category = params[:category]

    @search_name = search_name

    set_category
    if !search_name.nil? && !search_name.empty?
      @announcements = Announcement.where('UPPER(title) like UPPER(?) AND
        category_id = ?', "%#{search_name.upcase}%, #{selected_category}").
        paginate(page: params[:page], per_page: 5)
    else
      @announcements = Announcement.order('created_at DESC').
      paginate(page: params[:page], per_page: 5)
    end
  end

  # GET /announcements/1
  # GET /announcements/1.json

  def show() end

  # GET /announcements/new
  def new
    @announcement = Announcement.new
    set_category
    set_sub_category_by(@categories[0][:id]) if @categories.any?
  end

  # GET /announcements/1/edit
  def edit
    set_category
    set_sub_category_by(@categories[0][:id])
  end

  # POST /announcements
  # POST /announcements.json
  def create
    @announcement = Announcement.new(announcement_params)
    @announcement.user_id = current_user[:id]
    respond_to do |format|
      if @announcement.save
        @category = Category.find(@announcement.category_id)
        format.html { redirect_to @announcement, notice: 'Anúncio criado com sucesso!' }
        format.json { render :show, status: :created, location: @announcement }
      else
        format.html { render :new }
        format.json { render json: @announcement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /announcements/1
  # PATCH/PUT /announcements/1.json
  def update
    respond_to do |format|
      if @announcement.update(announcement_params)
        format.html { redirect_to @announcement, notice: 'Anúncio atualizado com sucesso!' }
        format.json { render :show, status: :ok, location: @announcement }
      else
        format.html { render :edit }
        format.json { render json: @announcement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /announcements/1
  # DELETE /announcements/1.json
  def destroy
    @announcement.destroy
    respond_to do |format|
      format.html { redirect_to announcements_url, notice: 'Anúncio apagado com sucesso!'}
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_announcement
    @announcement = Announcement.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list
  # through.
  def announcement_params
    params.require(:announcement).permit(:title, :description, :price,
                                         :category_id, :sub_category_id,
                                         :user_id)
  end

  def set_category
    @categories = Category.all
  end

  def set_sub_category_by(category_id)
    @sub_categories = SubCategory.where(category_id: category_id)
  end
end
