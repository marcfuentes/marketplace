class FavoriteListingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_listing
  
  def create
    if Favorite.create(favorited: @listing, user: current_user)
      redirect_to @listing 
      flash[:notice] = 'Listing has been added to wishlist'
    else
      redirect_to @listing
      flash[:alert] = 'Something went wrong...'
    end
  end
  
  def destroy
    Favorite.where(favorited_id: @listing.id, user_id: current_user.id).first.destroy
    redirect_to @listing
    flash[:notice] = 'Listing has now been removed from wishlist'
  end
  
  private
  
  def set_listing
    @listing = Listing.find(params[:listing_id] || params[:id])
  end
end