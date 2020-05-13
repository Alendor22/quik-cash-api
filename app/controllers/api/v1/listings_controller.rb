class Api::V1::ListingsController < ApplicationController
  before_action :set_listing, only: [:show, :update, :destroy]
  before_action :render_unauthorized_response, only: [:create, :update, :destroy]

  # GET /listings
  def index
    listings = Listing.all

    render json: listings, include: [:buyer, :seller], except: [:created_at, :updated_at]
  end

  # GET /listings/1
  def show
    render json: listing, include: [:buyer, :seller], except: [:created_at, :updated_at]
  end

  # POST /listings
  def create
    current_user ?
    listing = Listing.new(listing_params)
    if listing.save
      render json: listing, status: :created, location: listing
    : render_unauthorized_response
    else
      render json: listing.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /listings/1
  def update
    if listing.update(listing_params)
      render json: listing
    else
      render json: listing.errors, status: :unprocessable_entity
    end
  end

  # DELETE /listings/1
  def destroy
    listing.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_listing
      listing = Listing.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def listing_params
      params.require(:listing).permit(:item_name, :description, :price)
    end
end
