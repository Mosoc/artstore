class Admin::ProductsController < ApplicationController

layout "admin"

before_action :find_product, only: [:edit, :update, :show ,:destroy]
before_action :authenticate_user!
before_action :admin_required

def index
  @products = Product.all
end

def show
  
end

def new
  @product = Product.new
  @photo = @product.build_photo
end

def create 
  @product = Product.new(product_params)
    if @product.save
      redirect_to admin_products_path
    else
      render :new;
    end
end

def edit
   @photo = @product.photo
   if !@photo.present?
    @photo = @product.build_photo
   end
end

def update
  if @product.update(product_params)
    redirect_to admin_products_path
  else
    render :edit
  end  
end


def destroy
  @product.destroy
end

private 

def find_product
  @product = Product.find(params[:id]);
end

def product_params
  params.require(:product).permit(:title, :description, :quantity, :price, photo_attributes: [:image, :id])
      
end

end
