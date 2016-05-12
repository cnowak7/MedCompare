class HomeController < ApplicationController
  def index
    session[:wish_list_prod] = Product.all.pluck(:id)
    session[:wish_list_qty] = Product.all.pluck(:id)
  end

  def about
  end

  def contact
  	
  end

  def catalog
  	@products = Product.all
  end

  def productSearch
    @results = 0
    if !params[:searchInput].nil?
      @results = 1
      @searchInput = params[:searchInput]
      @searchCriteria = "%#{params[:searchInput]}%"
      # @productList = Product.where("description like ? or name like ?", @searchCriteria, @searchCriteria)
      @productList = Product.where("description like :search or name like :search", search: @searchCriteria)
    end
  end

  def wishList
  end

  def updateWishList
    # Get the specific item that needs to be removed
    wishListId = params[:wishListId].to_i;
    
     # Remove the specific element that is desired to be removed from the array.
    session[:wish_list_prod].delete_at(wishListId)
    session[:wish_list_qty].delete_at(wishListId)
    
      # Redirect to display cart (shopping cart)
    redirect_to wishList_url
  end

end
