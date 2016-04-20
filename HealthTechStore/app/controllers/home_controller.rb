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

end
