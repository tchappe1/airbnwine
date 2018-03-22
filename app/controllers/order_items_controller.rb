class OrderItemsController < ApplicationController

  def create
    @order_item = OrderItem.new
    @order_item.vin = Vin.find(params[:vin_id])
    if @order_item.save
      redirect_to vin_path(@order_item.vin)
    else
      render :new
    end
  end


private

def order_item_params
  params.require(:vin).permit(:vin_id)
end

end
