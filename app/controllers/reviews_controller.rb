class ReviewsController < ApplicationController
  # before_action :set_restaurant, %i[new create]
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    @review.save
    redirect_to restaurant_path(@restaurant)
  end

  # def index
  #   @reviews = Review.all
  # end

  private

  def set_restaurant; end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
