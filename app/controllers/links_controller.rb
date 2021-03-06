class LinksController < ApplicationController
  before_action :authenticate_user!
  before_action :set_link, only: [:show, :edit, :update, :destroy]

  # GET /links
  # GET /links.json
  def index
    @links = Link.all.order(announce_date: :desc)

    #simple search
    if params[:tag]
      # @links = Link.order(announce_date: :desc).search(params[:search])
      # @links = Link.order(announce_date: :desc).select { |link| link.service_time_categories.select { |category| category.name == params[:search] } }
      @links = []
      Link.all.order(announce_date: :desc).each do |link|
        link.service_time_categories.each do |category|
          if(category.name == params[:tag])
            @links.push(link)
          end
        end

        link.service_type_categories.each do |category|
          if(category.name == params[:tag])
            @links.push(link)
          end
        end

        link.word_content_categories.each do |category|
          if(category.name == params[:tag])
            @links.push(link)
          end
        end
      end



    else
      @links = Link.all.order(announce_date: :desc)
    end
  end

  # GET /links/1
  # GET /links/1.json
  def show

  end

  # GET /links/new
  def new
    @link = Link.new
  end

  # GET /links/1/edit
  def edit
  end

  # POST /links
  # POST /links.json
  def create
    @link = Link.new(link_params)

    require 'link_thumbnailer'
    object = LinkThumbnailer.generate(@link.url)

    @link.favicon = object.favicon
    @link.image = object.images.first.src.to_s

    respond_to do |format|
      if @link.save
        format.html { redirect_to @link, notice: 'Link was successfully created.' }
        format.json { render :show, status: :created, location: @link }
      else
        format.html { render :new }
        format.json { render json: @link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /links/1
  # PATCH/PUT /links/1.json
  def update
    respond_to do |format|
      if @link.update(link_params)
        require 'link_thumbnailer'
        object = LinkThumbnailer.generate(@link.url)

        @link.favicon = object.favicon
        @link.image = object.images.first.src.to_s
        @link.save

        format.html { redirect_to @link, notice: 'Link was successfully updated.' }
        format.json { render :show, status: :ok, location: @link }
      else
        format.html { render :edit }
        format.json { render json: @link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /links/1
  # DELETE /links/1.json
  def destroy
    @link.destroy
    respond_to do |format|
      format.html { redirect_to links_url, notice: 'Link was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_link
      @link = Link.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def link_params
      params.require(:link).permit(:titile, :description, :favicon, :image, :announce_date, :url, :service_time_category_ids => [], :service_type_category_ids => [], :word_content_category_ids => [])
    end
end
