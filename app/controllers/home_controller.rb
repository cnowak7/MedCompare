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
    @vendors = Vendor.all
  end

  def filter_products
    if !params[:vendorName].nil?
      print "VENDOR NAME WAS NOT NIL"
    else
      print "VENDOR NAME WAS NIL"
    end
  end

  def productSearch
    if !params[:searchInput].nil?
      @searchInput = params[:searchInput]
      @searchCriteria = "%#{params[:searchInput]}%"
      @productList = Product.where("description like :search or name like :search", search: @searchCriteria)
      @vendorList = Vendor.where("description like :search or name like :search", search: @searchCriteria)
    end
  end

  def wishList
  end

  def product_info
    @product = Product.find(params[:id])
    render layout: false
  end

  def vendor_info
    @vendor = Vendor.find(params[:id])
    render layout: false
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
