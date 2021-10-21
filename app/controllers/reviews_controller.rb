class ReviewsController < ApplicationController
  before_action :set_list, only: [:new, :create]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.list = @list
    if @review.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating, :list_id)
  end

  def set_review
    @review = Review.find(params[:id])
  end

  def set_list
    @list = List.find(params[:list_id])
  end
end
