class ServiceTimeCategoriesController < ApplicationController
  before_action :set_service_time_category, only: [:show, :edit, :update, :destroy]

  # GET /service_time_categories
  # GET /service_time_categories.json
  def index
    @service_time_categories = ServiceTimeCategory.all
  end

  # GET /service_time_categories/1
  # GET /service_time_categories/1.json
  def show
  end

  # GET /service_time_categories/new
  def new
    @service_time_category = ServiceTimeCategory.new
  end

  # GET /service_time_categories/1/edit
  def edit
  end

  # POST /service_time_categories
  # POST /service_time_categories.json
  def create
    @service_time_category = ServiceTimeCategory.new(service_time_category_params)

    respond_to do |format|
      if @service_time_category.save
        format.html { redirect_to @service_time_category, notice: 'Service time category was successfully created.' }
        format.json { render :show, status: :created, location: @service_time_category }
      else
        format.html { render :new }
        format.json { render json: @service_time_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /service_time_categories/1
  # PATCH/PUT /service_time_categories/1.json
  def update
    respond_to do |format|
      if @service_time_category.update(service_time_category_params)
        format.html { redirect_to @service_time_category, notice: 'Service time category was successfully updated.' }
        format.json { render :show, status: :ok, location: @service_time_category }
      else
        format.html { render :edit }
        format.json { render json: @service_time_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /service_time_categories/1
  # DELETE /service_time_categories/1.json
  def destroy
    @service_time_category.destroy
    respond_to do |format|
      format.html { redirect_to service_time_categories_url, notice: 'Service time category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_time_category
      @service_time_category = ServiceTimeCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_time_category_params
      params.require(:service_time_category).permit(:name)
    end
end
