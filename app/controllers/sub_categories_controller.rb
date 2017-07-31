class SubCategoriesController < ApplicationController
  before_action :set_sub_category, only: [:show, :edit, :update, :destroy]

  # GET /sub_categories
  # GET /sub_categories.json
  def index
    @sub_categories = SubCategory.all
    # sub_category = set_sub_category
    # respond_to do |format|
    #   format.json {render json: sub_category.as_json}
    # end
  end

  # GET /sub_categories/1
  # GET /sub_categories/1.json
  def show
    @sub_category = SubCategory.find(params[:id])
  end

  # GET /sub_categories/new
  def new
    @sub_category = SubCategory.new
  end

  # GET /sub_categories/1/edit
  def edit
  end

  # POST /sub_categories
  # POST /sub_categories.json
  def create
    @sub_category = SubCategory.new(sub_category_params)

    respond_to do |format|
      if @sub_category.save
        format.html { redirect_to @sub_category, notice: 'Sub categoria criada com sucesso!' }
        format.json { render :show, status: :created, location: @sub_category }
      else
        format.html { render :new }
        format.json { render json: @sub_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sub_categories/1
  # PATCH/PUT /sub_categories/1.json
  def update
    respond_to do |format|
      if @sub_category.update(sub_category_params)
        format.html { redirect_to @sub_category, notice: 'Sub categoria atualizada com sucesso!' }
        format.json { render :show, status: :ok, location: @sub_category }
      else
        format.html { render :edit }
        format.json { render json: @sub_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sub_categories/1
  # DELETE /sub_categories/1.json
  def destroy
    @sub_category.destroy
    respond_to do |format|
      format.html { redirect_to sub_categories_url, notice: 'Sub categoria apagada com sucesso!' }
      format.json { head :no_content }
    end
  end

  def fetch
    respond_to do |format|
      format.json {render json: sub_category_by_category_id.as_json}
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sub_category
      @sub_category = SubCategory.all
    end

    def sub_category_by_category_id
      @sub_category = SubCategory.select(:id, :sub_category_name).
                                  where(category_id: params[:id])
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def sub_category_params
      params.require(:sub_category).permit(:sub_category_name, :category_id)
    end
end
