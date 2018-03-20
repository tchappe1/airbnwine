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
    @vin = Vin.new(vin_params)
  end

  def create
    @vin = vin.new(vin_params)
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
