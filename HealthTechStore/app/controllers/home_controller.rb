class HomeController < ApplicationController
  def index
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
      @productList = Product.where("description like ? or name like ?", @searchCriteria, @searchCriteria)
    end
  end

end
