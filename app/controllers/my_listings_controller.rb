class MyListingsController < ApplicationController
  before_action :set_my_listing, only: [:show, :edit, :update, :destroy]

  # GET /my_listings
  # GET /my_listings.json
  def index
    @my_listings = MyListing.all
  end

  # GET /my_listings/1
  # GET /my_listings/1.json
  def show
  end

  # GET /my_listings/new
  def new
    @my_listing = MyListing.new
  end

  # GET /my_listings/1/edit
  def edit
  end

  # POST /my_listings
  # POST /my_listings.json
  def create
    @my_listing = MyListing.new(my_listing_params)

    respond_to do |format|
      if @my_listing.save
        format.html { redirect_to @my_listing, notice: 'My listing was successfully created.' }
        format.json { render :show, status: :created, location: @my_listing }
      else
        format.html { render :new }
        format.json { render json: @my_listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_listings/1
  # PATCH/PUT /my_listings/1.json
  def update
    respond_to do |format|
      if @my_listing.update(my_listing_params)
        format.html { redirect_to @my_listing, notice: 'My listing was successfully updated.' }
        format.json { render :show, status: :ok, location: @my_listing }
      else
        format.html { render :edit }
        format.json { render json: @my_listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_listings/1
  # DELETE /my_listings/1.json
  def destroy
    @my_listing.destroy
    respond_to do |format|
      format.html { redirect_to my_listings_url, notice: 'My listing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_listing
      @my_listing = MyListing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def my_listing_params
      params.require(:my_listing).permit(:name, :description, :price, :image)
    end
end
