class CartItemsController < ApplicationController
  def destroy
    @cart = current_cart
    @item = @cart.cart_items.find_by(product_id: params[:id])
    @product = @item.product
    @item.destroy
   
    flash[:warning]= "成功將#{@product.title}從購物車刪掉"
    redirect_to :back
  end
 
  def update
    @cart = current_cart
    @item = @cart.cart_items.find_cart_item(params[:id])
    if @item
    @item.update(item_params)
    flash[:notice] = "成功改變數量"
    else
      flash[:warning] = "數量不足以加入購物車"
    end

    redirect_to carts_path
  end
 
  private
 
  def item_params
    params.require(:cart_item).permit(:quantity)
  end
 
end
