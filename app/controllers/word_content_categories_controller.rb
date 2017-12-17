class WordContentCategoriesController < ApplicationController
  before_action :set_word_content_category, only: [:show, :edit, :update, :destroy]

  # GET /word_content_categories
  # GET /word_content_categories.json
  def index
    @word_content_categories = WordContentCategory.all
  end

  # GET /word_content_categories/1
  # GET /word_content_categories/1.json
  def show
  end

  # GET /word_content_categories/new
  def new
    @word_content_category = WordContentCategory.new
  end

  # GET /word_content_categories/1/edit
  def edit
  end

  # POST /word_content_categories
  # POST /word_content_categories.json
  def create
    @word_content_category = WordContentCategory.new(word_content_category_params)

    respond_to do |format|
      if @word_content_category.save
        format.html { redirect_to @word_content_category, notice: 'Word content category was successfully created.' }
        format.json { render :show, status: :created, location: @word_content_category }
      else
        format.html { render :new }
        format.json { render json: @word_content_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /word_content_categories/1
  # PATCH/PUT /word_content_categories/1.json
  def update
    respond_to do |format|
      if @word_content_category.update(word_content_category_params)
        format.html { redirect_to @word_content_category, notice: 'Word content category was successfully updated.' }
        format.json { render :show, status: :ok, location: @word_content_category }
      else
        format.html { render :edit }
        format.json { render json: @word_content_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /word_content_categories/1
  # DELETE /word_content_categories/1.json
  def destroy
    @word_content_category.destroy
    respond_to do |format|
      format.html { redirect_to word_content_categories_url, notice: 'Word content category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_word_content_category
      @word_content_category = WordContentCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def word_content_category_params
      params.require(:word_content_category).permit(:name, :order)
    end
end
