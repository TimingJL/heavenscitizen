class ServiceTypeCategoriesController < ApplicationController
  before_action :set_service_type_category, only: [:show, :edit, :update, :destroy]

  # GET /service_type_categories
  # GET /service_type_categories.json
  def index
    @service_type_categories = ServiceTypeCategory.all
  end

  # GET /service_type_categories/1
  # GET /service_type_categories/1.json
  def show
  end

  # GET /service_type_categories/new
  def new
    @service_type_category = ServiceTypeCategory.new
  end

  # GET /service_type_categories/1/edit
  def edit
  end

  # POST /service_type_categories
  # POST /service_type_categories.json
  def create
    @service_type_category = ServiceTypeCategory.new(service_type_category_params)

    respond_to do |format|
      if @service_type_category.save
        format.html { redirect_to @service_type_category, notice: 'Service type category was successfully created.' }
        format.json { render :show, status: :created, location: @service_type_category }
      else
        format.html { render :new }
        format.json { render json: @service_type_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /service_type_categories/1
  # PATCH/PUT /service_type_categories/1.json
  def update
    respond_to do |format|
      if @service_type_category.update(service_type_category_params)
        format.html { redirect_to @service_type_category, notice: 'Service type category was successfully updated.' }
        format.json { render :show, status: :ok, location: @service_type_category }
      else
        format.html { render :edit }
        format.json { render json: @service_type_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /service_type_categories/1
  # DELETE /service_type_categories/1.json
  def destroy
    @service_type_category.destroy
    respond_to do |format|
      format.html { redirect_to service_type_categories_url, notice: 'Service type category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_type_category
      @service_type_category = ServiceTypeCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_type_category_params
      params.require(:service_type_category).permit(:name, :order)
    end
end
