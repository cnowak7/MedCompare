class VendorsController < ApplicationController
  before_action :set_vendor, only: [:show, :edit, :update, :destroy]

  # GET /vendors
  # GET /vendors.json
  def index
    @vendors = Vendor.all
  end

  # GET /vendors/1
  # GET /vendors/1.json
  def show
    @products = @vendor.products
  end

  # GET /vendors/new
  def new
    @vendor = Vendor.new
  end

  # GET /vendors/1/edit
  def edit
  end

  # POST /vendors
  # POST /vendors.json
  def create
    @vendor = Vendor.new(vendor_params)

    respond_to do |format|
      if @vendor.save
        format.html { redirect_to @vendor, notice: 'Vendor was successfully created.' }
        format.json { render :show, status: :created, location: @vendor }
      else
        format.html { render :new }
        format.json { render json: @vendor.errors, status: :unprocessable_entity }
      end
    end
  end

  def products
    @vendor = Vendor.find(session[:user_id])
    @products = @vendor.products
  end

  def add_product_view
    @product = Product.new
  end

  def add_product_action
    @product = Product.new(product_params)
    if @product.save
      # TO-DO
      redirect_to my_products_path, notice: "Product has been added!"
    else
      render "add_product_view"
    end
  end

  def sign_up_view
    @vendor = Vendor.new
  end

  def sign_up_action
    @vendor = Vendor.new(vendor_params)
    if @vendor.save
      session[:user_id] = @vendor.id
      session[:role] = "vendor"
      session[:compare_cart_products] = Array.new
      session[:wish_list_products] = Array.new
      redirect_to catalog_path, notice: "Thank you for signing up!"
    else
      render "sign_up_view"
    end
  end

  def log_in_view
  end

  def log_in_action
    vendor = Vendor.find_by_email(params[:email])
    if vendor && vendor.authenticate(params[:password])
      session[:user_id] = vendor.id
      session[:role] = "vendor"
      # Initialize new arrays for product and quantity. 
      session[:compare_cart_products] = Array.new
      session[:wish_list_products] = Array.new

      redirect_to catalog_path, notice: "Logged in as " + vendor.email
    else
      flash.now.alert = "Email or password is invalid"
      render "log_in_view"
    end
  end

  # PATCH/PUT /vendors/1
  # PATCH/PUT /vendors/1.json
  def update
    respond_to do |format|
      if @vendor.update(vendor_params)
        format.html { redirect_to @vendor, notice: 'Vendor was successfully updated.' }
        format.json { render :show, status: :ok, location: @vendor }
      else
        format.html { render :edit }
        format.json { render json: @vendor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vendors/1
  # DELETE /vendors/1.json
  def destroy
    @vendor.destroy
    respond_to do |format|
      format.html { redirect_to vendors_url, notice: 'Vendor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vendor
      @vendor = Vendor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vendor_params
      params.require(:vendor).permit(:name, :image, :description, :email, :phone_number, :password, :password_confirmation)
    end
end
