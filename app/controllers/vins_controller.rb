class VinsController < ApplicationController
before_action :set_vin, except: [:index, :new]

  def index
    @vins = Vin.all
  end

  def show
  end

  def edit
  end

  def new
  end

  def create
  end

  def update
  end

  def destroy
  end

end

private

def set_vin
  @vin = Vin.find(params[:id])
end

def vin_params
  params.require(:restaurant).permit(:region, :appelation, :vignoble, :producteur, :alcool , :parker, :jrobinson, :prix_btl, :annee, :nb_btl_caisse)
end
