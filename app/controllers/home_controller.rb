class HomeController < ApplicationController
  def index
    if current_user
      redirect_to catalog_path
    else
      redirect_to login_path
    end
  end

  def about
  end

  def contact
  	
  end

  def catalog
  	@products = Product.all
    @vendors = Vendor.all
  end

  # Product Compare Cart

  def productCompareCart

  end

  def addToProductCompareCart
    if !session[:user_id]
      redirect_to login_path
    else
      if product_compare_cart.length < 3
        # Get the specific product selected to be compared
        # Converting the value to integer using the to_i method
        @product_id = params[:product_id].to_i;
        
        # Set session product compare cart arrays to nil.
        session[:compare_cart_products] << @product_id

        # Redirect to display cart (shopping cart)
        # redirect_to productCompareCart_path
      end
      redirect_to :back
    end
  end

  def removeFromProductCompareCart
    # Get the specific item that needs to be removed
    product_id = params[:product_id].to_i;
    
     # Remove the specific element that is desired to be removed from the array.
    session[:compare_cart_products].delete_at(product_id)
    
      # Redirect to display cart (shopping cart)
    redirect_to productCompareCart_path
  end

  # Wish List

  def wishList

  end

  def addToWishList
    if !session[:user_id]
      redirect_to login_path
    else
      # Get the specific product selected to be compared
      # Converting the value to integer using the to_i method
      @product_id = params[:product_id].to_i;
      
      # Set session product compare cart arrays to nil.
      session[:wish_list_products] << @product_id

      # Redirect to display cart (shopping cart)
      # redirect_to productCompareCart_path
      redirect_to :back
    end
  end

  def removeFromWishList
    # Get the specific item that needs to be removed
    product_id = params[:product_id].to_i;
    
     # Remove the specific element that is desired to be removed from the array.
    session[:wish_list_products].delete_at(product_id)
    
      # Redirect to display cart (shopping cart)
    redirect_to wishList_path
  end

  # Filter Products

  def filter_products
    if !params[:vendorName].nil?
      print "VENDOR NAME WAS NOT NIL"
    else
      print "VENDOR NAME WAS NIL"
    end
    redirect_to :back
  end

  def search
    if !params[:searchInput].nil?
      @searchInput = params[:searchInput]
      @searchCriteria = "%#{params[:searchInput]}%"
      @productList = Product.where("description like :search or name like :search", search: @searchCriteria)
      @vendorList = Vendor.where("description like :search or name like :search", search: @searchCriteria)
    end
  end

  def product_info
    @product = Product.find(params[:id])
    render layout: false
  end

  def vendor_info
    @vendor = Vendor.find(params[:id])
    render layout: false
  end

end
