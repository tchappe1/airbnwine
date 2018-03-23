class ReviewsController < ApplicationController
    # def new
    #   @vin = Vin.find(params[:vin_id])
    #   @vin = Vin.new
    # end

  def create
    @vin = Vin.find(params[:vin_id])
    @review = Review.new(review_params)
    @review.vin = @vin
      if @review.save!
        redirect_to vin_path(@vin)
      else
        render 'vins/show'
      end
  end

private

  def review_params
    params.require(:review).permit(:content)
  end
end
