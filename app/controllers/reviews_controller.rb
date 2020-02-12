class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]
  def index
    @reviews = Review.all
  end
  def show
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.restaurant_id = params[:restaurant_id]
    @review.save!
    redirect_to restaurant_path(@review.restaurant_id)
  end

  def edit
  end

  def update
    @review.update(review_params)
    redirect_to review_path(@review)
  end

  def destroy
    @review.destroy
    redirect_to review_path
  end

  private

  def review_params
    params.require(:review).permit(:restaurant, :content, :rating)
  end

  def set_review
    @review = Review.find(params[:id])
  end
end
