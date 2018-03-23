class VinsController < ApplicationController
before_action :set_vin, except: [:index, :new, :create]

  def index
    if params[:query].present?
      @vins = Vin.where("producteur ILIKE ?", "%#{params[:query]}%")
    else
      @vins = Vin.all
    end
  end

  def show
    @order_item = current_order.order_items.new
  end

  def edit
  end

  def new
    @vin = Vin.new
  end

  def create
    @vin = Vin.new(vin_params)
      if @vin.save
        redirect_to vins_path
      else
        render :new
      end
  end

  def update
    respond_to do |format|
      if @vin.update(vin_params)
        format.html { redirect_to @vin, notice: 'vin was successfully updated.' }
        format.json { render :show, status: :ok, location: @vin }
      else
        format.html { render :edit }
        format.json { render json: @vin.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @vin.destroy
    respond_to do |format|
      format.html { redirect_to vins_url, notice: 'Vin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

private

  def set_vin
    @vin = Vin.find(params[:id])
  end

  def vin_params
    params.require(:vin).permit(:region, :appelation, :vignoble, :producteur, :alcool , :parker, :jrobinson, :prix_btl, :annee, :nb_btl_caisse, :description, :photo)
  end
end
